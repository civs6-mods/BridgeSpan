"""Prevent shipping a BLP without the external textures its materials require."""
from pathlib import Path
import xml.etree.ElementTree as ET

mod=Path(__file__).resolve().parents[1]/'mod'
files={e.text for e in ET.parse(mod/'BridgeSpan.modinfo').findall('Files/File')}
required={'Platforms/Windows/BLPs/BS_DamagedWorld.blp',
          'Platforms/Windows/BLPs/SHARED_DATA/TEXTURE_BS_Damage_AO'}
for span in (1,2,3):
    required.update(f'Platforms/Windows/BLPs/SHARED_DATA/TEXTURE_BS_Damage_{span}_{s}' for s in ('G','M','N0','N1'))
    required.add(f'Platforms/Windows/BLPs/SHARED_DATA/TEXTURE_DiffuseTint_BS_Damage_{span}_D_null')
assert required<=files, f'Unlisted damage resources: {required-files}'
for name in required:
    assert (mod/name).is_file() and (mod/name).stat().st_size>=1024, f'Missing/empty damage resource: {name}'
print('DAMAGE_ART_PASS: package and all 16 external texture payloads exist and are registered')
