"""Run portable Lua regression tests against the actual installable mod sources."""
from pathlib import Path
import subprocess,sys
root=Path(__file__).resolve().parents[1]
runner=root/'node_modules/fengari-node-cli/src/lua-cli.js'
assert runner.is_file(),'Run npm ci first'
cases=[('test_hover.lua','WorldInput_BridgeSpan.lua',[]),('test_hover.lua','WorldInput_BridgeSpan.lua',['harmony']),('test_picker.lua','BridgeSpan_PlacementPicker.lua',[])]
for options in ([],['detailed']):
 cases.append(('test_map_pins.lua','MapPinPopup_BridgeSpan.lua',options))
for flavor in ('stock','extended'):
 cases.append(('test_bridge_ui.lua','MapSearchPanel_BridgeSpan.lua',[flavor]))
for name,script,options in cases:
 result=subprocess.run(['node',str(runner),str(root/'tests'/name),str(root/'mod'/script),*options],capture_output=True,text=True,encoding='utf8')
 print(result.stdout,end='');assert result.returncode==0 and not result.stderr,result.stderr
for name in ['test_clearance.py','test_unlock.py','test_damage.py','test_damage_matrix.py','test_v43_upgrade.py']:
 subprocess.run([sys.executable,str(root/'tests'/name)],check=True)
subprocess.run([sys.executable,str(root/'tests/test_localization.py')],check=True)
subprocess.run([sys.executable,str(root/'tests/test_damage_art.py')],check=True)
subprocess.run([sys.executable,str(root/'tests/test_bridge_registration.py')],check=True)
print('Offline gameplay, placement, database, localization and art checks passed.',flush=True)
