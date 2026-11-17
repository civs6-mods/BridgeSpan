$ErrorActionPreference = 'Stop'
$supportRoot = $PSScriptRoot
$compiler = Join-Path $env:WINDIR 'Microsoft.NET\Framework64\v4.0.30319\csc.exe'
$buildRoot = Join-Path $supportRoot 'build'
New-Item -ItemType Directory -Path $buildRoot -Force | Out-Null
$output = Join-Path $buildRoot 'BridgeSpan-Diagnostics.exe'
& $compiler /nologo /codepage:65001 /target:winexe /platform:x64 /optimize+ /reference:System.Windows.Forms.dll /reference:System.Drawing.dll /reference:System.Web.Extensions.dll ("/resource:"+(Join-Path $supportRoot 'Collect-BridgeSpanDiagnostics.ps1')+',BridgeSpanCollector.ps1') ("/resource:"+(Join-Path $supportRoot 'LogContext.ps1')+',LogContext.ps1') ("/resource:"+(Join-Path $supportRoot 'Extract-BridgeEvidence.ps1')+',Extract-BridgeEvidence.ps1') ("/out:"+$output) (Join-Path $supportRoot 'DiagnosticsClient.cs')
if ($LASTEXITCODE -ne 0) { throw 'Client compilation failed' }
Get-Item -LiteralPath $output | Select-Object FullName,Length
