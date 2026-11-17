# Changelog

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
