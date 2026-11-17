param([Parameter(Mandatory=$true)][string]$Path,[string]$JsonPath='',[Parameter(Mandatory=$true)][string]$SDKAssetEditor)
$ErrorActionPreference='Stop'
$dir=(Resolve-Path -LiteralPath $SDKAssetEditor).Path
$env:PATH="$dir;"+$env:PATH
Add-Type -TypeDefinition 'using System; using System.Reflection; public static class FgxPointer { public static unsafe IntPtr Address(object p) { return (IntPtr)Pointer.Unbox(p); } public static unsafe object Box(IntPtr p, Type t) { return Pointer.Box(p.ToPointer(),t); } }' -CompilerParameters (New-Object System.CodeDom.Compiler.CompilerParameters -Property @{CompilerOptions='/unsafe'})
$a=[Reflection.Assembly]::LoadFrom("$dir\Firaxis.Granny.Impl.dll")
$flags=[Reflection.BindingFlags]'Static,Public,NonPublic'
$read=$a.ManifestModule.GetMethods($flags)|Where-Object Name -EQ GrannyReadEntireFileFromMemory
$infoMethod=$a.ManifestModule.GetMethods($flags)|Where-Object Name -EQ GrannyGetFileInfo
$isMod=$a.ManifestModule.GetMethods($flags)|Where-Object Name -EQ GrannyIsMODFile
$bytes=[IO.File]::ReadAllBytes($Path); $pin=[Runtime.InteropServices.GCHandle]::Alloc($bytes,[Runtime.InteropServices.GCHandleType]::Pinned)
try {
 $file=$read.Invoke($null,@($bytes.Length,[FgxPointer]::Box($pin.AddrOfPinnedObject(),$read.GetParameters()[1].ParameterType)))
 if($isMod.Invoke($null,@($file))){$infoMethod=$a.ManifestModule.GetMethods($flags)|Where-Object Name -EQ GrannyGetModFileInfo}
 $info=$infoMethod.Invoke($null,@($file)); $ptr=[FgxPointer]::Address($info)
 $modelCount=[Runtime.InteropServices.Marshal]::ReadInt32($ptr,96);$models=[Runtime.InteropServices.Marshal]::ReadIntPtr($ptr,100)
 $modelNames=@();$placements=@();$rootTransforms=@();$modelMeshCounts=@()
 for($i=0;$i -lt $modelCount;$i++){
  $modelPointer=[Runtime.InteropServices.Marshal]::ReadIntPtr($models,8*$i)
  $modelNames += [Runtime.InteropServices.Marshal]::PtrToStringAnsi([Runtime.InteropServices.Marshal]::ReadIntPtr($modelPointer))
  $modelMeshCounts += [Runtime.InteropServices.Marshal]::ReadInt32($modelPointer,84)
  $placement=New-Object single[] 16; [Runtime.InteropServices.Marshal]::Copy([IntPtr]($modelPointer.ToInt64()+20),$placement,0,16);$placements+=,@($placement)
  $skeleton=[Runtime.InteropServices.Marshal]::ReadIntPtr($modelPointer,8)
  $bones=[Runtime.InteropServices.Marshal]::ReadIntPtr($skeleton,12)
  $rootTransform=New-Object single[] 16;[Runtime.InteropServices.Marshal]::Copy([IntPtr]($bones.ToInt64()+16),$rootTransform,0,16);$rootTransforms+=,@($rootTransform)
 }
 # Offsets are read from this installed SDK's GrannyFile.Attach implementation (packed 64-bit file_info).
 $count=[Runtime.InteropServices.Marshal]::ReadInt32($ptr,84);$meshes=[Runtime.InteropServices.Marshal]::ReadIntPtr($ptr,88)
 $metadata=@()
 $ctx=[Activator]::CreateInstance($a.GetType('Firaxis.Granny.GrannyFile'),$true)
 $mt=$a.GetType('Firaxis.Granny.GrannyMesh'); $attach=$mt.GetMethod('Attach',[Reflection.BindingFlags]'Instance,Public,NonPublic')
 for($i=0;$i -lt $count;$i++){
  $mesh=[Activator]::CreateInstance($mt,@($ctx)); $mp=[Runtime.InteropServices.Marshal]::ReadIntPtr($meshes,8*$i)
  [void]$attach.Invoke($mesh,@([FgxPointer]::Box($mp,$attach.GetParameters()[0].ParameterType)))
  $metadata += [pscustomobject]@{Name=$mesh.Name;Models=$modelNames;ModelMeshCounts=$modelMeshCounts;Placements=$placements;RootTransforms=$rootTransforms;Vertices=$mesh.VertexCount;Indices=$mesh.IndexCount;Bounds=$mesh.BoundingBox;Bones=@($mesh.BoneBindings);Groups=@($mesh.TriangleMaterialGroups|Select-Object TriCount,TriFirst,MaterialIndex)}
 }
 if($JsonPath){ConvertTo-Json -InputObject @($metadata) -Depth 8 | Set-Content -LiteralPath $JsonPath -Encoding UTF8}
 else {$metadata|ConvertTo-Json -Depth 8}
} finally {$pin.Free()}
