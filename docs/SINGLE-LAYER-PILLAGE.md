# Single-layer bridge damage — v43 verification

2026-11-17, Windows Steam Gathering Storm, DX12, build 26407122. Native DLL unchanged from v42. Published as v43 following the live and offline checks below.

Player behavior: one pillage damages only the occupied bridge tile, with one reward. The automatic Bridge=1 building still exists for native traversal, but shares damage and repair with the district. District repair rebuilds that tile's component to restore the native crossing flag. Old saves with only a damaged component are normalized to a repairable damaged district on load/transfer.

## Live checks

- Three-tile bridge, root (14,6), supports (15,6)/(16,6), shores (13,6)/(17,6). Enemy owner was Free Cities; the pillager was a human Warrior. Setup used native debug production, tech grants, and movement/attack allowance restoration between independent cases.
- Root: one actual unit Pillage changed both native flags, gold 1010→1510. Second Pillage was disallowed and gold stayed 1510. Other two tiles stayed intact. Warrior stayed at (14,6), IsEmbarked=false immediately after damage.
- Native district repair cleared both flags. Warrior crossed from the city-side shore to (17,6), IsEmbarked=false.
- Middle: one actual unit Pillage changed only the middle tile's two flags, gold 1510→2010. Second Pillage was disallowed. Root/last tile stayed intact; Warrior at (15,6) remained unembarked immediately after damage.
- After recapture, the actual production-panel data contained an enabled support repair entry. Native BUILD accepted DISTRICT_BS_SUPPORT_2 and production completion cleared both flags.
- Support districts originally had InternalOnly=1, which rejected repair. InternalOnly=0 with MaxPerPlayer=0 permits existing-district repair while rejecting new starts. Verified new starts rejected both in the bridge city with intact supports and another city without a bridge. An unassigned-trait approach was tested and rejected because it also blocked repairs; it is not in the implementation.

Gold amounts are for this all-tech fixture; they are not a promised base pillage yield. These observations establish immediate unit state, not every later-turn interaction. No damaged bridge mesh was added. Live scope is one three-tile bridge in DX12, not all spans, platforms, naval pillagers, combat combinations or mod stacks.

## Offline checks

The existing portable Lua suites pass, with additional behavioral checks for one building-pillage event exhausting both damage targets, per-tile isolation, district-only damage, district repair restoring its component, old hidden damage normalization, transfer/reload, and repair menu filtering. Separate repair entries are retained when both sea bridge types need repair. Original placement, picker, clearance, technology, localization and native-health checks remain in the suite.

Detailed timestamped operations and private QA saves/logs remain in the original workspace under regression/20261117/bridge-pillage; personal saves and raw logs are not committed to this repository.
