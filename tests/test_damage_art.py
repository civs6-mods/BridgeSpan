"""Prevent shipping a BLP without the external textures its materials require."""
from pathlib import Path
import xml.etree.ElementTree as ET

mod=Path(__file__).resolve().parents[1]/'mod'
files={e.text for e in ET.parse(mod/'BridgeSpan.modinfo').findall('Files/File')}
required={'Platforms/Windows/BLPs/BS_BridgeTiles.blp',
          'Platforms/Windows/BLPs/SHARED_DATA/TEXTURE_BS_Damage_AO'}
for span in (1,2,3):
    required.update(f'Platforms/Windows/BLPs/SHARED_DATA/TEXTURE_BS_Damage_{span}_{s}' for s in ('G','M','N0','N1'))
    required.add(f'Platforms/Windows/BLPs/SHARED_DATA/TEXTURE_DiffuseTint_BS_Damage_{span}_D_null')
assert required<=files, f'Unlisted damage resources: {required-files}'
for name in required:
    assert (mod/name).is_file() and (mod/name).stat().st_size>=1024, f'Missing/empty damage resource: {name}'
landmarks = ET.parse(mod/'ArtDefs/Landmarks.artdef')
entries = {e.get('text') for e in landmarks.findall('.//m_EntryName')}
assert {f'BS_BRIDGETILE_{n}_{d}_{i}' for n in (1,2,3) for d in range(6) for i in range(1,n+1)} <= entries
assert not any(name.endswith('WonderMovie.artdef') for name in files)
print('DAMAGE_ART_PASS: package and all 16 external texture payloads exist and are registered')
