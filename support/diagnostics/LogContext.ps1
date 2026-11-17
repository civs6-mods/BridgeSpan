# Timestamp hints only: Civ VI logs are not a per-save archive.
function Get-BridgeLogContext {
    param([object[]]$Files, [object[]]$RunningGames)
    $logs = @($Files | Where-Object { $_.found -and $_.name -like 'game-logs/*' -and $_.sourceLastWriteUtc })
    $latest = $logs | Sort-Object { [DateTimeOffset]::Parse($_.sourceLastWriteUtc) } -Descending | Select-Object -First 1
    $lua = $logs | Where-Object name -eq 'game-logs/Lua.log' | Select-Object -First 1
    $mod = $Files | Where-Object { $_.found -and $_.name -like 'install-*/BridgeSpan.modinfo' -and $_.sourceLastWriteUtc } | Sort-Object { [DateTimeOffset]::Parse($_.sourceLastWriteUtc) } -Descending | Select-Object -First 1
    $started = $RunningGames | Where-Object startedAtUtc | Sort-Object { [DateTimeOffset]::Parse($_.startedAtUtc) } -Descending | Select-Object -First 1
    $warnings = [System.Collections.Generic.List[object]]::new()
    if (-not $latest) {
        $warnings.Add([pscustomobject]@{code='NO_GAME_LOGS';message='未找到游戏日志。请进入游戏复现问题后重新收集。';messageEn='No game logs were found. Reproduce the issue in-game and collect again.'})
    } else {
        if ($mod -and [DateTimeOffset]::Parse($latest.sourceLastWriteUtc).AddSeconds(5) -lt [DateTimeOffset]::Parse($mod.sourceLastWriteUtc)) {
            $warnings.Add([pscustomobject]@{code='LOGS_PREDATE_MOD_FILES';message='日志时间早于模组文件，可能是更新前的记录。建议重新进入游戏复现问题后收集。';messageEn='Game logs predate the installed mod metadata; they may be from before an update. Reproduce the issue and collect again.'})
        }
        if ($started -and $lua -and [DateTimeOffset]::Parse($lua.sourceLastWriteUtc).AddSeconds(5) -lt [DateTimeOffset]::Parse($started.startedAtUtc)) {
            $warnings.Add([pscustomobject]@{code='LUA_PREDATES_RUNNING_GAME';message='Lua 日志早于当前游戏启动时间，可能尚未写入本次对局记录。';messageEn='Lua.log predates the running game process and may not contain this session yet.'})
        }
        if (-not $lua) {
            $warnings.Add([pscustomobject]@{code='NO_LUA_LOG';message='未找到 Lua 日志，可能缺少对局中的桥梁记录。请复现问题后重新收集。';messageEn='Lua.log was not found; in-game bridge records may be missing. Reproduce the issue and collect again.'})
        }
    }
    if (@($RunningGames).Count -eq 0) {
        $warnings.Add([pscustomobject]@{code='GAME_NOT_RUNNING';message='当前游戏未运行，收集的是已保留的日志。请确认是在遇到问题后收集的。';messageEn='The game is not running. These are retained logs; please confirm they were collected after the issue.'})
    }
    [pscustomobject]@{
        gameRunning=(@($RunningGames).Count -gt 0)
        latestGameLogUtc=$(if ($latest) { $latest.sourceLastWriteUtc } else { $null })
        luaLogUtc=$(if ($lua) { $lua.sourceLastWriteUtc } else { $null })
        latestModMetadataUtc=$(if ($mod) { $mod.sourceLastWriteUtc } else { $null })
        warnings=@($warnings.ToArray())
        sessionIdentification='Timestamps only; no save or match identification. Files may contain earlier sessions.'
    }
}
