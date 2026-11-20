# Changelog

## 51 (2026-11-20)

### 简体中文

- 修复部分改良设施无法选择合法地块或点击建造的问题。已实测秦长城、穿山隧道和滑雪场。
- 地图钉保留石桥和跨海大桥两种图标。地图搜索合并重复桥名并按正确桥型匹配桥面。
- 地块提示、城市明细、收支报告和文明百科隐藏内部桥梁组件。城市逐座列桥，收支汇总保留原值。
- 金币和信仰购买列表隐藏只能通过生产建造的桥梁区域。

### English

- Restore valid placement targets and construction for improvements such as mountain tunnels and ski resorts, including with Harmony in Diversity.
- Show one map tack and one search suggestion for each visible bridge type. Index sea bridge segments under the sea bridge name.
- Hide internal bridge components in plot tooltips, city details, reports and the Civilopedia while retaining individual bridges and report totals.
- Exclude production-only bridge districts from Gold and Faith purchase options.

## 47 (2026-11-19)

- Use standard game movement for land units, ships and trade routes, including approaches at the side of the bridge.
- Remove BridgeSpan's game-core DLL, core selection, path updates and DLL health monitor from the installable package.
- A pillage removes the crossing components of one entire bridge. A native district repair restores them. Entry and embarkation on damaged tiles follow the game rules.
- Preserve the new bridge district and its spans when a delayed removal event arrives for a replaced legacy district.

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
