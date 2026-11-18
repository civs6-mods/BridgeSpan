# Damaged bridge art

The three editable Blender files in `source/` retain the approved bridge geometry,
materials, camera and lights. Toggle the `Sxx_Intact` and `Sxx_Damaged` collections
to preview a particular segment combination. Sources and generated art are original
BridgeSpan work. Firaxis SDK binaries are required locally and are not included.

Each completed water tile draws its own intact or pillaged geometry through its
district TileBase. The root TileBase also contains the oriented construction
worksite. The 36 TileBase variants cover all spans, directions and tile positions.
The 108 crossing components are shared across visual states. Each bridge has one
saved damage flag. A native root district repair restores every tile in that bridge.

## Build v46 tile art

1. For each span from 1 to 3 run Blender with
   `-b -t 6 --python scripts/bake_damage_models.py -- N --regional --segments`.
   This exports both native states of each tile and bakes one texture atlas per
   span. Generated sources are under `build/segments/`.
2. In Windows PowerShell 5.1 run `scripts/convert_bridges.ps1 -ArtRoot
   <absolute build/segments path> -SDKAssetEditor <SDK/AssetModTools/AssetEditor>`.
3. Using a Python environment with NumPy (such as Blender’s Python), run `python scripts/cook_tile_segments.py <aligned-worksite-pantry>
   <SDK Assets/Civ6> <SDK/AssetModTools/Cooker> --stage`. The original
   aligned worksite Pantry lives in the BridgeSpan regional art workspace under
   `art/regional/construction/aligned-game/pantry`. The build combines its
   construction geometry with the bridge sections. Diffuse atlases remain 2048px. The
   cooker uses 1024px normal, gloss and metallic atlases, re-normalizing tangent
   vectors after filtering. The authoring inputs retain their full resolution. It checks the cook log
   for fallback assets and checks the output file set against the mod manifest.
4. Run `python scripts/test.py` at the repository root. Before packaging a new
   release, refresh `release-manifest.json` from the reviewed installation files.

The earlier whole-bridge art generators in this directory reproduce the v44
assets from that version's checkout. Their SQL and ArtDef bindings belong to v44.
