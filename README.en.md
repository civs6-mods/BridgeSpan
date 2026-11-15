# BridgeSpan — Build Your Own Bridges

Build bridges over coast and lake tiles in Civilization VI. Land units and traders cross between the shores, while ships can pass through the water tiles below.

[中文](README.md) · [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3838759919) · [Development](docs/DEVELOPMENT.md)

Version **40** matches the verified Workshop download. The Workshop item is currently private.

Features include one-tile stone bridges and two-/three-tile sea bridges, city production, multiple bridges per city, end-only land access, and numbered layout choices with A/B shore previews. Eligible feature and improvement removal is shown before construction; cancelling leaves them intact.

For Windows Steam, Gathering Storm, single-player. Compatible with Harmony in Diversity. See [verification scope](docs/VERIFICATION.md) for DX11/DX12 coverage.

Once the Workshop item is public, subscribe and enable it in Additional Content. For manual installation, exit the game and copy `mod/` as `BridgeSpan` into your Civilization VI `Mods` directory, then enable it. Use either the local copy or the Workshop subscription, since both share the same mod ID. No external launcher is required.

Stone bridges require Steam Power (Arch with Harmony in Diversity); sea bridges require Steel. Both also require Shipbuilding. Select a bridge in city production, choose a water tile, and confirm its layout, cost and removal warnings. Every bridge water tile must belong to the same city. Keep the mod enabled in saves containing its bridges.

`mod/` contains the full installable package and editable Lua/SQL/UI files. `native/` contains native sources and build tools. `tests/` contains offline regression tests; `workshop/` contains bilingual page copy and images.

```sh
python scripts/verify.py
npm ci
python scripts/test.py
python scripts/package.py
```

The ZIP is written to `dist/BridgeSpan-v40.zip`. See [development instructions](docs/DEVELOPMENT.md) for native builds.

MIT licensed, with separate MinHook notices. No original game DLL is redistributed.
