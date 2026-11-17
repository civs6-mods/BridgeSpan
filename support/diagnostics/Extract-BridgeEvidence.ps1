# Read only the already-collected, redacted copies. Never infer a save identity.
function Select-BridgeEvidence {
    param([string[]]$Lines, [string]$Kind, [object[]]$RunningGames)
    $last = $Lines.Count - 1
    $start = 0
    $basis = 'No recognized load boundary; retained file only.'
    if ($Kind -eq 'lua') {
        for ($i=0; $i -le $last; $i++) {
            if ($Lines[$i] -match '\[BridgeSpanDistrict\] Multiple city bridges enabled') { $start=$i; $basis='Last BridgeSpan gameplay initialization marker.' }
        }
        $related = '(?i)BridgeSpan|\[BridgeSpanDistrict\]|\bBS_|NO_NATIVE_REPLY'
        $fault = '(?i)error|failed|failure|rejected|NO_NATIVE_REPLY|QUERY_ERROR|PROTOCOL_MISMATCH|NATIVE_INACTIVE|AXES_NOT_ACCEPTED|AXES_OUT_OF_SYNC|GAMEPLAY_MONITOR_MISSING|MONITOR_ERROR'
    } else {
        # A PID may survive multiple reloads; the last PROXY_LOADED starts the latest native context.
        for ($i=0; $i -le $last; $i++) {
            if ($Lines[$i] -match ' pid=\d+ PROXY_LOADED(?: |$)') { $start=$i; $basis='Last native PROXY_LOADED boundary; may be a reload in the same process.' }
        }
        $related = '.'
        $fault = '(?i)\b\w*(?:FAILED|FAILURE|UNSUPPORTED|MISSING|REJECTED|ERROR)\w*\b'
    }
    $latestFault = -1
    $hits = [System.Collections.Generic.List[int]]::new()
    for ($i=0; $i -le $last; $i++) {
        if ($Lines[$i] -match $related) {
            if ($Lines[$i] -match $fault) { $latestFault=$i }
            if ($i -ge $start) { $hits.Add($i) }
        }
    }
    $selected = [System.Collections.Generic.SortedSet[int]]::new()
    # Bound extracted context while preserving the collected source beside it.
    foreach ($hit in @($hits | Select-Object -Last 50)) {
        for ($i=[Math]::Max($start,$hit-5); $i -le [Math]::Min($last,$hit+8); $i++) { [void]$selected.Add($i) }
    }
    $contextLines = @($selected | ForEach-Object { '{0}: {1}' -f ($_+1),$Lines[$_] })
    $errorLines = @()
    if ($latestFault -ge 0) {
        $errorLines = @(for ($i=[Math]::Max(0,$latestFault-20); $i -le [Math]::Min($last,$latestFault+30); $i++) { '{0}: {1}' -f ($i+1),$Lines[$i] })
    }
    $nativePid = $null
    $nativeStartedAt = $null
    if ($Kind -eq 'native' -and $last -ge 0 -and $Lines[$start] -match '^(\S+) pid=(\d+) ') {
        $nativeStartedAt=$Matches[1]; $nativePid=[int]$Matches[2]
    }
    $sameRunningProcess = $false
    foreach ($game in @($RunningGames)) {
        # PID reuse must not make an older context appear current.
        if ($game.pid -eq $nativePid -and $game.startedAtUtc -and $nativeStartedAt) {
            try { if ([DateTimeOffset]::Parse($nativeStartedAt).AddSeconds(5) -ge [DateTimeOffset]::Parse($game.startedAtUtc)) { $sameRunningProcess=$true } } catch {}
        }
    }
    [pscustomobject]@{
        kind=$Kind;selectionBasis=$basis;startLine=($start+1);endLine=$Lines.Count
        latestErrorLine=$(if ($latestFault -ge 0) { $latestFault+1 } else { $null })
        errorInEarlierContext=($latestFault -ge 0 -and $latestFault -lt $start)
        nativePid=$nativePid;nativeContextStartedAtUtc=$nativeStartedAt;sameRunningProcess=$sameRunningProcess
        relatedLineCount=$hits.Count;contextLines=$contextLines;errorLines=$errorLines
    }
}

function Export-BridgeEvidence {
    param([string]$PackageRoot, [object[]]$Files, [object[]]$RunningGames)
    $directory = Join-Path $PackageRoot 'analysis'
    New-Item -ItemType Directory -Path $directory -Force | Out-Null
    $encoding = [Text.UTF8Encoding]::new($false)
    $results = [System.Collections.Generic.List[object]]::new()
    foreach ($file in @($Files | Where-Object { $_.found -and ($_.name -eq 'game-logs/Lua.log' -or $_.name -like '*/BridgeSpanCore-probe.log') })) {
        $kind = if ($file.name -eq 'game-logs/Lua.log') { 'lua' } else { 'native' }
        $lines = [IO.File]::ReadAllLines((Join-Path $PackageRoot $file.name),[Text.Encoding]::UTF8)
        $selection = Select-BridgeEvidence -Lines $lines -Kind $kind -RunningGames $RunningGames
        $prefix = if ($kind -eq 'lua') { 'lua' } else { ($file.name -split '/')[0]+'-native' }
        $header = @(
            "Source: $($file.name) (line numbers refer to this collected copy)"
            "Source last write (UTC): $($file.sourceLastWriteUtc); tail-only source: $($file.tailOnly)"
            "Selection: $($selection.selectionBasis)"
            "Context range: $($selection.startLine)-$($selection.endLine)"
            'This is a log context, not an identified save/match. No error match does not prove healthy behavior.'
            'Native STOPPED / CONTEXT_DESTROYED can be normal exit/reload, not an error by themselves.'
            ''
        )
        $contextPath = "analysis/$prefix-latest-context.txt"
        [IO.File]::WriteAllText((Join-Path $PackageRoot $contextPath),(($header+$selection.contextLines) -join "`r`n"),$encoding)
        $errorPath=$null
        if ($selection.latestErrorLine) {
            $errorPath="analysis/$prefix-latest-error.txt"
            $errorHeader=@("Latest matching error line: $($selection.latestErrorLine)","ERROR_BELONGS_TO_EARLIER_CONTEXT: $($selection.errorInEarlierContext)",'Historical errors must not be attributed to a newer context.','')
            [IO.File]::WriteAllText((Join-Path $PackageRoot $errorPath),(($header+$errorHeader+$selection.errorLines) -join "`r`n"),$encoding)
        }
        $results.Add([pscustomobject]@{
            source=$file.name;selectionBasis=$selection.selectionBasis
            contextFile=$contextPath;latestErrorFile=$errorPath;startLine=$selection.startLine;endLine=$selection.endLine
            latestErrorLine=$selection.latestErrorLine;errorInEarlierContext=$selection.errorInEarlierContext
            relatedLineCount=$selection.relatedLineCount;nativePid=$selection.nativePid
            nativeContextStartedAtUtc=$selection.nativeContextStartedAtUtc;sameRunningProcess=$selection.sameRunningProcess
        })
    }
    return $results.ToArray()
}
