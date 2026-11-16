"""Audit both mod-browser metadata and the in-game localization database."""
from pathlib import Path
import re,sqlite3,xml.etree.ElementTree as ET
r=Path(__file__).resolve().parents[1]
mod=next((r/'mod').glob('*.modinfo'))
root=ET.parse(mod).getroot()
metadata={x.get('id'):x for x in root.findall('./LocalizedText/Text')}
for field in ['Name','Description']:
 key=root.findtext('./Properties/'+field)
 assert key in metadata,(field,key)
 for lang in ['en_US','zh_Hans_CN']:assert metadata[key].findtext(lang), (field,lang)
 assert not re.search(r'[\u4e00-\u9fff]',metadata[key].findtext('en_US'))
db=sqlite3.connect(':memory:')
db.execute('CREATE TABLE LocalizedText(Tag TEXT, Language TEXT, Text TEXT, PRIMARY KEY(Tag,Language))')
for p in (r/'mod').glob('*.xml'):
 for row in ET.parse(p).getroot().findall('./LocalizedText/Row'):
  db.execute('INSERT INTO LocalizedText VALUES(?,?,?)',(row.get('Tag'),row.get('Language'),row.findtext('Text') or row.get('Text')))
for tag, in db.execute('SELECT DISTINCT Tag FROM LocalizedText'):
 rows=dict(db.execute('SELECT Language,Text FROM LocalizedText WHERE Tag=?',(tag,)))
 assert rows.get('en_US') and rows.get('zh_Hans_CN'),tag
 assert sorted(re.findall(r'\{[^{}]+\}',rows['en_US']))==sorted(re.findall(r'\{[^{}]+\}',rows['zh_Hans_CN'])),tag
 assert not re.search(r'[\u4e00-\u9fff]',rows['en_US']),tag
for p in (r/'mod').glob('*.lua'):
 for tag in re.findall(r'["\'](LOC_(?:AT|BS|DISTRICT_BS)_[A-Z0-9_]+)["\']',p.read_text('utf8')):
  assert db.execute('SELECT COUNT(*) FROM LocalizedText WHERE Tag=?',(tag,)).fetchone()[0]==2,(p.name,tag)
assert root.findtext('./Properties/SupportsMultiplayer')=='0'
assert root.findtext('./Properties/SupportsHotSeat')=='0'
print(mod.stem+': bilingual metadata, '+str(db.execute('SELECT COUNT(DISTINCT Tag) FROM LocalizedText').fetchone()[0])+' in-game keys and matching placeholders verified')
