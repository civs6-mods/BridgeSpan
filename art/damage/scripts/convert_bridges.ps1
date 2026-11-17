param([Parameter(Mandatory=$true)][string]$ArtRoot,[Parameter(Mandatory=$true)][string]$SDKAssetEditor)
$ErrorActionPreference='Stop'
$dir=(Resolve-Path -LiteralPath $SDKAssetEditor).Path
$nativeTools=Join-Path $ArtRoot 'native-tools'
New-Item -ItemType Directory -Path $nativeTools -Force | Out-Null
Copy-Item -LiteralPath (Join-Path $dir 'FbxImporter_Release.dll') -Destination (Join-Path $nativeTools 'FbxImporter.dll') -Force
$env:PATH="$nativeTools;$dir;"+$env:PATH
$a=[Reflection.Assembly]::LoadFrom("$dir\Firaxis.CivTech.Impl.dll")
$m=$a.GetType('Firaxis.CivTech.Autodesk_FBXInterface').GetMethod('ExportGeometry')
$b=$m.GetMethodBody().GetILAsByteArray()
# Resolve the SDK's own native FBX export call; fail if the SDK signature changes.
$export=$a.ManifestModule.ResolveMethod([BitConverter]::ToInt32($b,0x26))
if($export.Name -ne 'ExportFBXScene'){throw 'Unexpected SDK importer version'}
foreach($fbx in Get-ChildItem (Join-Path $ArtRoot 'exports') -Filter '*.fbx'){
 $out=Join-Path $ArtRoot ('pantry\Geometries\'+$fbx.BaseName+'.fgx')
 if(!$export.Invoke($null,@([string]$fbx.FullName,[string]$fbx.BaseName,[string]$out,$false,$false,[IntPtr]::Zero))){throw "Import failed: $fbx"}
 & powershell -NoProfile -File "$PSScriptRoot\inspect_fgx.ps1" -Path $out -JsonPath "$($fbx.FullName).metadata.json" -SDKAssetEditor $dir
 if($LASTEXITCODE -ne 0){throw "Native geometry inspection failed: $fbx"}
 Write-Output "Converted: $($fbx.BaseName)"
}

