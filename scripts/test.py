"""Run portable Lua regression tests against the actual installable mod sources."""
from pathlib import Path
import subprocess,sys
root=Path(__file__).resolve().parents[1]
runner=root/'node_modules/fengari-node-cli/src/lua-cli.js'
assert runner.is_file(),'Run npm ci first'
cases=[('test_hover.lua',root/'mod/WorldInput_BridgeSpan.lua'),('test_picker.lua',root/'mod/BridgeSpan_PlacementPicker.lua'),('test_health.lua',root/'mod')]
for name,arg in cases:
 result=subprocess.run(['node',str(runner),str(root/'tests'/name),str(arg)],capture_output=True,text=True,encoding='utf8')
 print(result.stdout,end='');assert result.returncode==0 and not result.stderr,result.stderr
for name in ['test_clearance.py','test_unlock.py','test_damage.py']:
 subprocess.run([sys.executable,str(root/'tests'/name)],check=True)
print('All six offline regression suites passed.')
