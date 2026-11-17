"""Stage the package AND its external texture payloads before generating bindings."""
from pathlib import Path
import argparse
import shutil

root=Path(__file__).resolve().parents[1]
parser=argparse.ArgumentParser()
parser.add_argument('--cooked',type=Path,default=root/'build/cooked')
args=parser.parse_args()
destination=root.parents[1]/'mod/Platforms/Windows/BLPs'
files=['BS_DamagedWorld.blp']
for span in (1,2,3):
    files += [f'SHARED_DATA/TEXTURE_BS_Damage_{span}_{suffix}' for suffix in ('G','M','N0','N1')]
    files += [f'SHARED_DATA/TEXTURE_DiffuseTint_BS_Damage_{span}_D_null']
files += ['SHARED_DATA/TEXTURE_BS_Damage_AO']
for relative in files:
    source=args.cooked/relative
    assert source.is_file() and source.stat().st_size>=1024, f'Missing cooked resource: {source}'
for relative in files:
    target=destination/relative
    target.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(args.cooked/relative,target)
print('Staged damaged bridge package and all 16 external texture payloads')
