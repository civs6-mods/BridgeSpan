$ErrorActionPreference = 'Stop'
. (Join-Path $PSScriptRoot 'LogContext.ps1')
. (Join-Path $PSScriptRoot 'Extract-BridgeEvidence.ps1')
function Assert-That([bool]$Condition,[string]$Message) { if (-not $Condition) { throw $Message } }
function Artifact([string]$Name,[string]$Time) { [pscustomobject]@{name=$Name;found=$true;sourceLastWriteUtc=$Time} }
$fresh = @(Artifact 'game-logs/Lua.log' '2026-01-02T12:00:00Z'; Artifact 'install-1/BridgeSpan.modinfo' '2026-01-01T12:00:00Z')
$running = @([pscustomobject]@{pid=42;startedAtUtc='2026-01-02T11:00:00Z'})
$context = Get-BridgeLogContext -Files $fresh -RunningGames $running
Assert-That ($context.warnings.Count -eq 0) 'Fresh running session must not be marked stale.'
$context = Get-BridgeLogContext -Files $fresh -RunningGames @()
Assert-That ($context.warnings.Count -eq 1 -and $context.warnings[0].code -eq 'GAME_NOT_RUNNING') 'A closed game alone is not evidence of stale logs.'
$old = @(Artifact 'game-logs/Lua.log' '2026-01-01T10:00:00Z'; Artifact 'install-1/BridgeSpan.modinfo' '2026-01-02T10:00:00Z')
$context = Get-BridgeLogContext -Files $old -RunningGames $running
Assert-That (($context.warnings.code -contains 'LOGS_PREDATE_MOD_FILES') -and ($context.warnings.code -contains 'LUA_PREDATES_RUNNING_GAME')) 'Old logs must be recorded for the author.'
$context = Get-BridgeLogContext -Files @() -RunningGames @()
Assert-That ($context.warnings.code -contains 'NO_GAME_LOGS') 'Missing logs must not be described as an old session.'
$lua = @(
    'BridgeSpan_DistrictGameplay: [BridgeSpanDistrict] Multiple city bridges enabled'
    'BridgeSpan_DistrictGameplay: [BridgeSpanDistrict] ERROR earlier problem'
    'BridgeSpan_DistrictGameplay: [BridgeSpanDistrict] Multiple city bridges enabled'
    'OtherMod: ERROR unrelated'
    'BridgeSpan_DistrictGameplay: [BridgeSpanDistrict] Completed 0 1 3'
)
$selected = Select-BridgeEvidence -Lines $lua -Kind lua -RunningGames $running
Assert-That ($selected.startLine -eq 3 -and $selected.latestErrorLine -eq 2 -and $selected.errorInEarlierContext) 'An earlier error must be separate from the latest context.'
Assert-That (($selected.contextLines -join '') -notmatch 'earlier problem') 'Latest context must not include an earlier session.'
Assert-That ($selected.relatedLineCount -eq 2) 'Unrelated mod errors must not be counted as BridgeSpan errors.'
$native = @(
    '2026-01-02T11:00:01Z pid=42 PROXY_LOADED file.dll'
    '2026-01-02T11:00:02Z pid=42 AXIS_INSTALL_FAILED failure'
    '2026-01-02T11:10:01Z pid=42 PROXY_LOADED file.dll'
    '2026-01-02T11:10:02Z pid=42 AXIS_READY 7 hooks'
    '2026-01-02T11:11:00Z pid=42 CONTEXT_DESTROYED '
)
$selected = Select-BridgeEvidence -Lines $native -Kind native -RunningGames $running
Assert-That ($selected.startLine -eq 3 -and $selected.latestErrorLine -eq 2 -and $selected.errorInEarlierContext -and $selected.sameRunningProcess) 'Same PID reloads must have distinct native contexts.'
$laterProcess = @([pscustomobject]@{pid=42;startedAtUtc='2026-01-03T11:00:00Z'})
$selected = Select-BridgeEvidence -Lines $native -Kind native -RunningGames $laterProcess
Assert-That (-not $selected.sameRunningProcess) 'A reused PID must not attach old native evidence to a new process.'
$selected = Select-BridgeEvidence -Lines @('2026-01-02T11:11:00Z pid=42 CONTEXT_DESTROYED ') -Kind native -RunningGames @()
Assert-That (-not $selected.latestErrorLine) 'Normal shutdown alone must not become an error.'
$selected = Select-BridgeEvidence -Lines @() -Kind lua -RunningGames @()
Assert-That ($selected.endLine -eq 0 -and $selected.relatedLineCount -eq 0) 'Empty logs must be handled.'
Write-Host 'PASS: timestamp classification, latest-context extraction, historical errors, unrelated mods, same-PID reloads, PID reuse, normal shutdown, empty logs.'
