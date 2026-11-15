"""Package only the verified mod; never writes into the game or uploads."""
from pathlib import Path
import zipfile
from verify import ROOT,verify
m=verify();out=ROOT/'dist';out.mkdir(exist_ok=True)
target=out/f"BridgeSpan-v{m['version']}.zip"
with zipfile.ZipFile(target,'w',zipfile.ZIP_DEFLATED,compresslevel=6) as z:
 for name in sorted(m['files']):z.write(ROOT/'mod'/name,'BridgeSpan/'+name)
with zipfile.ZipFile(target) as z:assert z.testzip() is None and len(z.namelist())==len(m['files'])
print(target)
