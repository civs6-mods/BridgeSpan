"""Generate export forwarding from the locally owned PE, without copying it."""
import hashlib
import json
from pathlib import Path
import struct
import sys

ROOT = Path(__file__).resolve().parent
CORE = Path(sys.argv[1])
data = CORE.read_bytes()
u16 = lambda offset: struct.unpack_from('<H', data, offset)[0]
u32 = lambda offset: struct.unpack_from('<I', data, offset)[0]
pe = u32(0x3c)
assert data[pe:pe+4] == b'PE\0\0' and u16(pe+4) == 0x8664
opt = pe+24
assert u16(opt) == 0x20b
sections = opt+u16(pe+20)
def raw(rva):
    for i in range(u16(pe+6)):
        p = sections+i*40
        va = u32(p+12)
        if va <= rva < va+max(u32(p+8),u32(p+16)):
            return u32(p+20)+rva-va
    raise ValueError(f'Unmapped RVA: {rva:x}')
def cstr(offset):
    return data[offset:data.index(b'\0',offset)].decode('ascii')
exports = raw(u32(opt+112))
ordinal_base = u32(exports+16)
names = raw(u32(exports+32))
ordinals = raw(u32(exports+36))
entries = []
for i in range(u32(exports+24)):
    name = cstr(raw(u32(names+i*4)))
    entries.append((name, u16(ordinals+i*2)+ordinal_base))
out = ROOT/'build'
out.mkdir(exist_ok=True)
lines = ['LIBRARY GameCore_XP2_BridgeSpan_FinalRelease', 'EXPORTS']
for name, ordinal in entries:
    if name in ('DllCreateGameContext','DllDestroyGameContext'):
        lines.append(f'    {name} @{ordinal}')
    else:
        lines.append(f'    {name}=GameCore_XP2_FinalRelease.{name} @{ordinal}')
(out/'exports.def').write_text('\n'.join(lines)+'\n', encoding='utf-8')
directives = []
for name, ordinal in entries:
    target = name if name in ('DllCreateGameContext','DllDestroyGameContext') else f'{name}=GameCore_XP2_FinalRelease.{name}'
    directives.append(f'#pragma comment(linker,"/export:{target},@{ordinal}")')
(out/'exports.h').write_text('\n'.join(directives)+'\n',encoding='utf-8')
rules=(ROOT/'bridge_axis.c').read_text(encoding='utf-8')
rules=rules.replace('extern const Snapshot * volatile active_snapshot;', 'extern const Snapshot *read_snapshot(void);')
rules=rules.replace(' = active_snapshot;', ' = read_snapshot();')
(out/'axis_rules.inc').write_text(rules,encoding='utf-8')
record = {'corePath':str(CORE), 'coreSha256':hashlib.sha256(data).hexdigest(),
          'exportCount':len(entries), 'originalBinaryCopied':False}
(out/'build-input.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record))
