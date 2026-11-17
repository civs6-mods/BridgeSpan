# Damaged bridge art

The three editable Blender files in `source/` retain the approved bridge geometry,
materials, camera and lights. Toggle the `Sxx_Intact` and `Sxx_Damaged` collections
to preview a particular segment combination. Sources and generated art are original
BridgeSpan work. Firaxis SDK binaries are required locally and are not included.

The runtime replaces the existing root bridge component with a matching damage-mask
variant. Supports retain their individual damage flags. No extra pillage target is
added on a bridge. Legacy and directional districts have separate component
bindings so each rendered asset remains attached to its actual bridge district.

## Build

1. Run `blender -b -t 6 --python scripts/bake_damage_models.py -- N --regional`
   for N = 1, 2, 3. This bakes one 2048 px atlas per span and exports all 66 damaged
   combinations across six directions. Exactly one UV layer, `UV0`, is exported.
2. In Windows PowerShell 5.1 run `scripts/convert_bridges.ps1 -ArtRoot <absolute
   damage/build> -SDKAssetEditor <SDK/AssetModTools/AssetEditor>`. The SDK converts
   FBX to native FGX; the inspector records authoritative mesh counts and groups.
3. Run `python scripts/prepare_damage_assets.py`. This generates Pantry descriptors
   from the supplied templates and validates SDK metadata.
4. Cook `build/pantry/XLPs/BS_DamagedWorld.xlp` with Civ6AssetCooker, using this
   Pantry plus the base-game and Gathering Storm SDK Pantries. Require a successful
   cook with no missing entries. Run `python scripts/stage_damage_assets.py`
   to copy the BLP and its 16 external `SHARED_DATA` texture payloads to the mod.
   The BLP alone does not contain these textures and will render corrupted colors.
5. Run `python scripts/prepare_damage_data.py` to regenerate SQL, localization,
   icon and ArtDef bindings. Run `python ../../scripts/test.py` from this directory
   using the repository's installed Node dependencies.

`build_damage_models.py` can regenerate the editable models from the earlier
approved regional sources via `--source-root`. Rebuilding the game assets only
requires the committed `source/` files, not that earlier authoring workspace.

The generated bindings support 36 simultaneous bridges per city, matching the
existing component slots. A native city project repairs all damaged segments of
one bridge for 40% of its original base production cost (rounded up), with game
speed scaling supplied by the engine. A hidden city-center permit limits each
project to its owning city and is removed when the bridge is healthy.
