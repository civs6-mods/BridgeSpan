"""Validate the frozen release package without needing Civilization VI."""
from pathlib import Path
import hashlib,json,xml.etree.ElementTree as ET
ROOT=Path(__file__).resolve().parents[1]
def verify():
 manifest=json.loads((ROOT/'release-manifest.json').read_text(encoding='utf8'))
 folder=ROOT/'mod';files=manifest['files']
 actual={p.relative_to(folder).as_posix() for p in folder.rglob('*') if p.is_file()}
 assert actual==set(files),f'Package file set changed: {actual ^ set(files)}'
 for name,digest in files.items():
  p=folder/name;assert p.resolve().is_relative_to(folder.resolve())
  assert hashlib.sha256(p.read_bytes()).hexdigest()==digest,f'Hash mismatch: {name}'
 mod=ET.parse(folder/'BridgeSpan.modinfo').getroot()
 assert mod.attrib['id']==manifest['modId'] and int(mod.attrib['version'])==manifest['version']
 item=json.loads((ROOT/'workshop/item.json').read_text(encoding='utf8'))
 assert item['id']==manifest['workshopItem'] and item['version']==manifest['version'], 'Workshop metadata differs from the release manifest'
 declared={x.text for x in mod.find('Files')}|{'BridgeSpan.modinfo'}
 assert declared==actual,f'Modinfo file list differs: {declared ^ actual}'
 print(f"Verified v{manifest['version']}: {len(files)} files, {sum((folder/n).stat().st_size for n in files):,} bytes")
 return manifest
if __name__=='__main__':verify()
