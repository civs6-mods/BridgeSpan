# BridgeSpan read-only support collector. No admin rights, game edits or uploads.
[CmdletBinding()]
param(
    [string]$OutputDirectory = [Environment]::GetFolderPath('Desktop'),
    [string]$SteamLibrary
)
$ErrorActionPreference = 'Stop'
. (Join-Path $PSScriptRoot 'LogContext.ps1')
. (Join-Path $PSScriptRoot 'Extract-BridgeEvidence.ps1')
$bridgeId = '6fc747c1-f24b-4c0d-a4c2-91b84f99f762'
$bridgePublishedId = '3838759919'
$bridgeExpectedCore = '092abfbb2176f8df04b5212f819dc269dd83aea866ff05aaf489904a1ff7c41f'
$bridgeKnownModule = 'eaa17840f5a740799c07822440817f5339599c438751abd39daeff0286b25361'
$bridgeStamp = Get-Date -Format 'yyyyMMdd-HHmmss'
$bridgeUnique = [Guid]::NewGuid().ToString('N').Substring(0,6)
$bridgeOut = Join-Path $OutputDirectory "BridgeSpan-Diagnostics-$bridgeStamp-$bridgeUnique"
$bridgeZip = "$bridgeOut.zip"
New-Item -ItemType Directory -Path $bridgeOut -Force | Out-Null
$bridgeUtf8 = [System.Text.UTF8Encoding]::new($false)
$bridgeErrors = [System.Collections.Generic.List[string]]::new()
$bridgeArtifacts = [System.Collections.Generic.List[object]]::new()
$bridgeDocuments = [Environment]::GetFolderPath('MyDocuments')
function Protect-BridgeText([string]$Value) {
    # Remove the home-directory username from copied text, including JSON paths.
    foreach ($pair in @(@($env:LOCALAPPDATA,'%LOCALAPPDATA%'),@($bridgeDocuments,'%DOCUMENTS%'),@($env:USERPROFILE,'%USERPROFILE%'))) {
        if ($pair[0]) {
            $Value = $Value.Replace([string]$pair[0],[string]$pair[1])
            $Value = $Value.Replace(([string]$pair[0]).Replace('\','\\'),[string]$pair[1])
        }
    }
    return $Value
}
function Write-BridgeJson([string]$Name,$Value) {
    $json = ConvertTo-Json -InputObject $Value -Depth 12
    [IO.File]::WriteAllText((Join-Path $bridgeOut $Name),(Protect-BridgeText $json),$bridgeUtf8)
}
function Read-BridgeSharedText([string]$Path) {
    $share = [IO.FileShare]::ReadWrite -bor [IO.FileShare]::Delete
    $stream = [IO.File]::Open($Path,[IO.FileMode]::Open,[IO.FileAccess]::Read,$share)
    $reader = [IO.StreamReader]::new($stream,[Text.Encoding]::UTF8,$true)
    try { return $reader.ReadToEnd() } finally { $reader.Dispose() }
}
function Save-BridgeText([string]$Source,[string]$Name) {
    if (-not (Test-Path -LiteralPath $Source -PathType Leaf)) {
        $bridgeArtifacts.Add([pscustomobject]@{name=$Name;found=$false;source=Protect-BridgeText $Source})
        return
    }
    try {
        $info = Get-Item -LiteralPath $Source
        $tailOnly = $info.Length -gt 8MB
        if ($tailOnly) { $body = (Get-Content -LiteralPath $Source -Tail 12000 -Encoding UTF8) -join "`r`n" }
        else { $body = Read-BridgeSharedText $Source }
        $target = Join-Path $bridgeOut $Name
        New-Item -ItemType Directory -Path (Split-Path -Parent $target) -Force | Out-Null
        [IO.File]::WriteAllText($target,(Protect-BridgeText $body),$bridgeUtf8)
        $bridgeArtifacts.Add([pscustomobject]@{name=$Name;found=$true;source=Protect-BridgeText $Source;sourceBytes=$info.Length;sourceLastWriteUtc=$info.LastWriteTimeUtc.ToString('o');tailOnly=$tailOnly})
    } catch { $bridgeErrors.Add("Read failed: $(Protect-BridgeText $Source): $($_.Exception.Message)") }
}
$bridgeLibraries = [System.Collections.Generic.List[string]]::new()
function Add-BridgeLibrary([string]$Path) {
    if ($Path -and (Test-Path -LiteralPath $Path -PathType Container)) {
        $full = [IO.Path]::GetFullPath($Path).TrimEnd('\')
        if ($bridgeLibraries -notcontains $full) { $bridgeLibraries.Add($full) }
    }
}
Add-BridgeLibrary $SteamLibrary
foreach ($key in @('HKCU:\Software\Valve\Steam','HKLM:\SOFTWARE\WOW6432Node\Valve\Steam','HKLM:\SOFTWARE\Valve\Steam')) {
    $reg = Get-ItemProperty -LiteralPath $key -ErrorAction SilentlyContinue
    if ($reg) {
        if ($reg.SteamPath) { Add-BridgeLibrary $reg.SteamPath }
        if ($reg.InstallPath) { Add-BridgeLibrary $reg.InstallPath }
    }
}
foreach ($library in @($bridgeLibraries.ToArray())) {
    $vdf = Join-Path $library 'steamapps\libraryfolders.vdf'
    if (Test-Path -LiteralPath $vdf) {
        foreach ($match in [regex]::Matches([IO.File]::ReadAllText($vdf),'"path"\s+"([^"]+)"')) {
            Add-BridgeLibrary ($match.Groups[1].Value.Replace('\\','\'))
        }
    }
}
$bridgeInstalls = [System.Collections.Generic.List[string]]::new()
$bridgeGames = [System.Collections.Generic.List[object]]::new()
foreach ($library in $bridgeLibraries) {
    $mod = Join-Path $library "steamapps\workshop\content\289070\$bridgePublishedId"
    if (Test-Path -LiteralPath $mod) { $bridgeInstalls.Add($mod) }
    $acf = Join-Path $library 'steamapps\appmanifest_289070.acf'
    if (Test-Path -LiteralPath $acf) {
        $body = [IO.File]::ReadAllText($acf)
        $build = [regex]::Match($body,'"buildid"\s+"([^"]+)"').Groups[1].Value
        $folder = [regex]::Match($body,'"installdir"\s+"([^"]+)"').Groups[1].Value
        if ($folder -and $folder -notmatch '[\\/]' -and $folder -ne '..') {
            $gameRoot = Join-Path $library "steamapps\common\$folder"
            $core = Join-Path $gameRoot 'DLC\Expansion2\Binaries\Win64\GameCore_XP2_FinalRelease.dll'
            $hash = if (Test-Path -LiteralPath $core) { (Get-FileHash -LiteralPath $core -Algorithm SHA256).Hash.ToLowerInvariant() } else { $null }
            $bridgeGames.Add([pscustomobject]@{steamBuildId=$build;gameRoot=Protect-BridgeText $gameRoot;expansion2CoreFound=[bool]$hash;coreSha256=$hash;matchesSupportedCore=($hash -eq $bridgeExpectedCore)})
        }
    }
}
# Also detect a second manual installation sharing the same mod ID.
$bridgeUserRoots = @((Join-Path $bridgeDocuments "My Games\Sid Meier's Civilization VI"),(Join-Path $env:LOCALAPPDATA "Firaxis Games\Sid Meier's Civilization VI")) | Select-Object -Unique
foreach ($userRoot in $bridgeUserRoots) {
    $mods = Join-Path $userRoot 'Mods'
    if (Test-Path -LiteralPath $mods) {
        foreach ($directory in Get-ChildItem -LiteralPath $mods -Directory) {
            foreach ($file in Get-ChildItem -LiteralPath $directory.FullName -Filter '*.modinfo' -File) {
                try {
                    [xml]$localInfo = [IO.File]::ReadAllText($file.FullName)
                    if ($localInfo.Mod.id -eq $bridgeId -and $bridgeInstalls -notcontains $directory.FullName) { $bridgeInstalls.Add($directory.FullName) }
                } catch { $bridgeErrors.Add("Cannot read modinfo: $(Protect-BridgeText $file.FullName)") }
            }
        }
    }
}
$bridgeInstallInfo = [System.Collections.Generic.List[object]]::new()
$number = 0
foreach ($mod in $bridgeInstalls) {
    $number++
    $prefix = "install-$number"
    $modinfo = Join-Path $mod 'BridgeSpan.modinfo'
    $version = $null
    if (Test-Path -LiteralPath $modinfo) {
        try { [xml]$xml = [IO.File]::ReadAllText($modinfo); $version = $xml.Mod.version } catch { $bridgeErrors.Add('Invalid modinfo XML') }
    }
    $dll = Join-Path $mod 'Binaries\Win64\GameCore_XP2_BridgeSpan_FinalRelease.dll'
    $dllHash = if (Test-Path -LiteralPath $dll) { (Get-FileHash -LiteralPath $dll -Algorithm SHA256).Hash.ToLowerInvariant() } else { $null }
    $bridgeInstallInfo.Add([pscustomobject]@{path=Protect-BridgeText $mod;modVersion=$version;nativeDllFound=[bool]$dllHash;nativeDllSha256=$dllHash;matchesKnownNativeModule=($dllHash -eq $bridgeKnownModule)})
    Save-BridgeText $modinfo "$prefix/BridgeSpan.modinfo"
    Save-BridgeText (Join-Path $mod 'CoreConfig.sql') "$prefix/CoreConfig.sql"
    foreach ($name in @('BridgeSpanCore-probe.log','BridgeSpanCore-health.json')) { Save-BridgeText (Join-Path $mod "Binaries\Win64\$name") "$prefix/$name" }
}
foreach ($name in @('Modding.log','GameCoreAppConfig.log','Database.log','Lua.log')) {
    $candidates = @($bridgeUserRoots | ForEach-Object { $p=Join-Path $_ "Logs\$name"; if (Test-Path -LiteralPath $p) { Get-Item -LiteralPath $p } })
    if ($candidates.Count) { Save-BridgeText ($candidates | Sort-Object LastWriteTimeUtc -Descending | Select-Object -First 1).FullName "game-logs/$name" }
    else { $bridgeArtifacts.Add([pscustomobject]@{name="game-logs/$name";found=$false}) }
}
$bridgeRunning = [System.Collections.Generic.List[object]]::new()
foreach ($process in @(Get-Process -Name 'CivilizationVI','CivilizationVI_DX12' -ErrorAction SilentlyContinue)) {
    $modules = @()
    try { $modules = @($process.Modules | Where-Object ModuleName -like '*GameCore*' | ForEach-Object ModuleName) }
    catch { $bridgeErrors.Add('Cannot inspect GameCore modules in running game; no administrator elevation attempted.') }
    $started = $null
    try { $started = $process.StartTime.ToUniversalTime().ToString('o') } catch { $bridgeErrors.Add('Cannot read running game start time.') }
    $bridgeRunning.Add([pscustomobject]@{process=$process.ProcessName;pid=$process.Id;startedAtUtc=$started;gameCoreModuleNames=$modules})
}
$context = Get-BridgeLogContext -Files @($bridgeArtifacts.ToArray()) -RunningGames @($bridgeRunning.ToArray())
$evidence = @(Export-BridgeEvidence -PackageRoot $bridgeOut -Files @($bridgeArtifacts.ToArray()) -RunningGames @($bridgeRunning.ToArray()))
$collectedAt = (Get-Date).ToUniversalTime().ToString('o')
Write-BridgeJson 'summary.json' ([ordered]@{collectorVersion=2;clientVersion='1.0.0';collectedAt=$collectedAt;windowsVersion=[Environment]::OSVersion.VersionString;is64BitOS=[Environment]::Is64BitOperatingSystem;powershellVersion=$PSVersionTable.PSVersion.ToString();steamLibrariesFound=$bridgeLibraries.Count;games=@($bridgeGames.ToArray());bridgeInstallations=@($bridgeInstallInfo.ToArray());multipleInstallationsDetected=($bridgeInstallInfo.Count -gt 1);runningGames=@($bridgeRunning.ToArray());logContext=$context;evidence=$evidence;files=@($bridgeArtifacts.ToArray());readErrors=@($bridgeErrors.ToArray())})
$notice = @($context.warnings | ForEach-Object message) -join "`r`n"
$summaryText = @(
    '自由造桥 · 诊断摘要 / BridgeSpan diagnostics 1.0.0'
    '供作者分析：先看 analysis/ 下自动提取的桥梁上下文和最近错误，再核对完整收集日志。'
    'For the author: start with analysis/ for extracted bridge context and the latest matching errors.'
    "收集时间 / Collected (UTC): $collectedAt"
    "最新游戏日志 / Latest game log (UTC): $($context.latestGameLogUtc)"
    "Lua 日志 / Lua.log (UTC): $($context.luaLogUtc)"
    "模组信息文件 / Mod metadata (UTC): $($context.latestModMetadataUtc)"
    ''
    $(if ($notice) { $notice } else { '未发现上述时间不匹配；这不代表已经确认日志属于报错对局。' })
    @($context.warnings | ForEach-Object messageEn)
    ''
    '本工具收集当前保留的日志文件，不能按存档或对局筛选。日志可能包含此前的记录。'
    '出现问题后请尽快收集，先别进入其他对局。已被覆盖的记录无法恢复。'
    'These are retained log files, not a per-save archive. Collect immediately after the issue, before loading another game.'
    '文件时间仅供核对，不能单独证明模组故障、更新状态或日志所属对局。'
    'Timestamps alone do not prove a mod failure, update status, or session identity.'
    ''
    "读取失败数 / Read errors: $($bridgeErrors.Count)"
    '详细版本、文件列表及读取失败信息见 summary.json。'
) -join "`r`n"
[IO.File]::WriteAllText((Join-Path $bridgeOut '诊断摘要.txt'),$summaryText,$bridgeUtf8)
# The wrapper reads this small sidecar before removing its own temporary folder.
$hasUsableLogs = @($bridgeArtifacts | Where-Object { $_.found -and $_.name -like '*.log' -and $_.sourceBytes -gt 0 }).Count -gt 0
$clientStatus = [ordered]@{hasUsableLogs=$hasUsableLogs}
[IO.File]::WriteAllText((Join-Path $OutputDirectory 'collection-status.json'),(ConvertTo-Json $clientStatus),$bridgeUtf8)
$instructions = @'
BridgeSpan support package

Please send this ZIP with:
- Error code and whether this happened on a new game or a loaded save.
- Ruleset (Gathering Storm / Rise and Fall / Standard) and single-player/multiplayer.
- Whether fully restarting the game and enabling only official DLC + BridgeSpan reproduces it.

This collector only reads selected logs and installation metadata, and writes its own output folder/ZIP.
It does not edit game files, mods, saves or configuration, and does not upload anything.
Game DLLs, saves, dumps and account credentials are not included. Logs can contain mod names and paths.
Missing files are recorded in summary.json; missing logs alone do not prove that the DLL did not load.
Old native receipts must be compared with the current PID and timestamps before drawing conclusions.
See 诊断摘要.txt and summary.json/logContext for timestamp hints. No save/match is identified automatically.
'@
[IO.File]::WriteAllText((Join-Path $bridgeOut 'READ-ME.txt'),$instructions,$bridgeUtf8)
Compress-Archive -LiteralPath $bridgeOut -DestinationPath $bridgeZip -CompressionLevel Optimal
Write-Host "Created: $bridgeZip"
Write-Host 'Send the ZIP and the three short answers listed in READ-ME.txt.'
