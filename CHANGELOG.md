# Changelog

## 44

- Add damaged models for all three spans, with each damaged segment reflected independently across all six directions.
- Replace per-segment repair entries with one city project per bridge. Completing it repairs every damaged segment of that bridge; other bridges are unaffected.
- Include all external texture payloads in the package and verify their manifest entries. Editable Blender sources and the asset build pipeline are included in the repository.
- Native crossing DLL and placement rules are unchanged. See [damaged-art and whole-bridge repair verification](docs/DAMAGED-BRIDGE-V44.md).

## 43

- One pillage damages one bridge tile and pays once. The internal crossing component shares the district's damaged state.
- Repairing the district restores its crossing component and land passage. Existing saves with a damaged internal component gain a normal district repair target.
- Support tiles have native repair entries without allowing standalone support construction. Separate bridge repair entries remain visible.
- Windows Steam DX12 three-tile bridge playtest and offline regressions: see [single-layer pillage verification](docs/SINGLE-LAYER-PILLAGE.md).

## 40

- Simplify the bilingual Workshop description and in-game summary.
- No gameplay or asset changes from version 39.

## 39

- Restore numbered bridge-layout choices and A/B shore previews.
- Confirm eligible feature/improvement removal before construction.
- Preserve confirmed support clearances across save/load and protect changed plots.
- Synchronize the in-game name and bilingual construction instructions.

Earlier experiments remain in the original development workspace; this repository starts with the verified version 40 package.
