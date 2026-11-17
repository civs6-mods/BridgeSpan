# v44 受损外观与整桥修复 / Damaged art and whole-bridge repair

2026-11-17: DX11 and DX12 each passed 132 native damage/repair combinations, actual Warrior pillage and bidirectional crossing on all three spans, and damaged save loading. All three span families were visually checked. See [scope and procedures](DAMAGED-BRIDGE-V44.md). The native DLL is unchanged from v43.

# v43 单层劫掠与修复 / Single-layer pillage and repair

2026-11-17: A bridge tile now has one player-facing damage/repair layer. Actual DX12 root and middle-tile pillage/repair checks and offline regressions passed. See [scoped verification](SINGLE-LAYER-PILLAGE.md). Native DLL and art are unchanged from v42.

Workshop item 3838759919 accepted v43 and remains public. All 72 actual Steam-downloaded files (91,778,337 bytes) match the v43 release manifest. Only the mod version, district gameplay Lua, district SQL and production panel adapter differ from v42. The content update retained the existing title, bilingual description and media.

# 42 bilingual update / 双语更新

2026-11-17: Mod-list names and descriptions now use embedded en_US / zh_Hans_CN localization. Existing in-game translations are audited for matching keys and placeholders. Gameplay scripts and native binaries are unchanged. This update does not enable multiplayer or hotseat. No new in-game language-switch playtest is claimed.

# v41 验收范围 / Verification scope

2026-11-15：v41 已公开。原版石桥解锁改为“工程”，《和而不同》保留“拱券”；造船术要求和跨海大桥钢铁解锁不变。三个 SQLite 科技树用例通过，真实 Steam 下载的全部 72 个文件与发布清单一致。此版本没有新增游戏内实测；其余玩法、资源和原生 DLL 沿用 v40 的验收范围。

Public v41 changes the standard stone-bridge unlock to Engineering; Harmony in Diversity retains Arch. Shipbuilding remains required and sea bridges still unlock at Steel. Three SQLite technology-tree cases passed, and all 72 actual Steam-downloaded files matched the release manifest. No new live gameplay test was performed for v41; prior v40 gameplay, art and native-module coverage still applies.

# v40 验收范围

2026-11-15，v40 工坊上传及真实订阅下载完成。72 个文件、91,773,893 字节与发布清单一致，服务端中英文说明回读一致。v40 仅修改简介和工坊文案，71 个玩法及资源文件与已验收 v39 相同。

v39 在 Windows Steam DX12 的标准《风云变幻》独立 QA 地图及《和而不同》实战副本验证：

- 原生生产入口、多方案列表、A/B 两岸、键盘选择、取消、单方案直接确认。
- 渔场与海藻森林移除警告；取消不清理，确认后正确开工。
- 三格桥支撑段清理许可保存、施工中重载、完工后重载、下载包冷启动。
- 支撑格条件中途改变时，不进行部分清理；当前实现取消该桥并移除根区域。
- 原生健康检查与桥梁记录恢复。

本轮施工完成使用开发接口补充生产力，不宣称逐回合自然生产重演。此前自然生产和原生通行验收保留原有范围。

同一原生 DLL 的 DX11 测试包含七项移动用例、24 次逐格移动：陆军双向、侧面上下桥绕端点、海军双向及存读档。DX12 另有既有通行验收。未将这些有限实测扩大为所有 AI、战争、第三方模组、多人组合或其他平台均通过。

原生 DLL SHA-256：`eaa17840f5a740799c07822440817f5339599c438751abd39daeff0286b25361`。

独立仓库迁移不修改发布包，迁移后的离线测试、原生构建与测试结果见[仓库迁移验证](REPOSITORY-VERIFICATION.md)。个人存档及含本机信息的原始日志留在原工作区。
