# v51 工坊发布包验收（2026-11-20）

Windows Steam DX12，《风云变幻》，启用《和而不同》、详细地图钉、Map Search Extension、Better Report Screen，关闭运河扩展。在独立测试局的同一座城市通过游戏生产队列完成一座石桥、一座两格跨海大桥和一座三格跨海大桥。

| 入口 | 实测结果 |
| --- | --- |
| 地图钉 | 桥类图标共 2 个 |
| 地图搜索 | 石桥、跨海大桥、学院各有 1 条同名候选。在 6 格实桥上建索引，石桥命中 1 格，跨海大桥命中 5 格，逐格核对相符 |
| 城市明细 | 实际控件显示石桥 1 行、跨海大桥 2 行 |
| 地块提示 | 6 格桥面均隐藏了内部通行建筑 |
| 收支报告 | 3 座桥分别保留。3 个支撑区域和 6 个内部建筑从明细中移除。过滤前后 15 项汇总值一致，收益页成功渲染 |

离线回归覆盖原版和扩展界面入口、第三方普通项目、带收益或维护费的内部组件、掠夺维修的 132 种组合和 v43 的 6,048 种读档组合。另用《风云变幻》和《和而不同》的输入脚本复核相邻地块建设指令，包括长城、穿山隧道和滑雪场的有效格提示与点击提交。

### v47 与 v51 同档性能对照

在同一台电脑上使用 DX12。秦始皇测试存档含 8 个主要文明、3 座完工桥，地图尺寸为 44 × 26，运河扩展关闭。两个版本分别从同一文件读档，从本地玩家结束回合计时到下一次本地玩家回合开始。第 5 回合触发外交会面，取此前四个连续回合。

| 版本 | 1 → 2 | 2 → 3 | 3 → 4 | 4 → 5 | 平均 |
| --- | ---: | ---: | ---: | ---: | ---: |
| 工坊 v47 读档 | 2.089 秒 | 2.060 秒 | 2.102 秒 | 1.899 秒 | 2.038 秒 |
| 测试包 v51 读档 | 2.074 秒 | 2.085 秒 | 2.096 秒 | 1.866 秒 | 2.030 秒 |

v47 在创建同一测试档后另测一轮，四回合平均为 2.027 秒。界面测试各预热一次、计时九次，取中位数。v47 读档与 v51 读档的地图钉列表刷新分别为 27 和 25 毫秒，城市明细均为 1 毫秒，收支报告为 5 和 3 毫秒，提取已探索地块搜索词均为 1 毫秒。本轮覆盖开局回合和这些界面操作。

在 v51 实机中，从单位面板对空地块发起建设，再读取地图地块和单位剩余建造次数。中国重做模组将秦始皇的特色设施替换为「秦长城」，建造者在边境目标格直接建成，次数由 5 降至 4。滑雪场和穿山隧道使用相邻地块高亮及游戏原有的点击处理函数，分别由建造者和军事工程师建成，各消耗一次建造次数。本次使用领袖为秦始皇（LEADER_QIN）。

# v47 原版寻路候选版验收

Windows Steam《风云变幻》单人版使用游戏自带的 GameCore_XP2_FinalRelease.dll。最终安装包共 59 个文件，45 个美术资源与 v46 的 SHA-256 一致。

| 大兴第 4 回合存档，DX12 | 4 → 5 | 5 → 6 | 6 → 7 |
| --- | ---: | ---: | ---: |
| 工坊 v43 | 10 秒 | 10 秒 | 10 秒 |
| 最终候选 v47 | 4 秒 | 4 秒 | 5 秒 |

相同机器、存档和模组组合，计时取玩家 0 结束回合至重新激活，每次经过另外 39 个席位，日志精度为一秒。该数据覆盖开局三个回合。

- DX11 和 DX12 各自通过 132 组实机损坏与修复组合。36 座桥覆盖两代桥区、1～3 格和六个朝向。修复了旧式桥区替换后延迟到达的区域删除事件误删新桥记录的问题。
- 两个渲染器均实测同城两座同朝向三格桥。从生产面板依次选区域维修，第一次只修好其中一座，第二次修好另一座。测试向生产队列补充生产力。勇士掠夺一次获得 500 金，同一座桥无法重复领取。
- 勇士可以从侧岸步行进出健康桥的中段。整座桥受损并移除通行标记后，原版寻路仍允许实测勇士步行上桥，桨帆船也可驶入中段。断桥不能用作封锁陆军的保证。
- DX12 商人穿越三格桥，原版商路从第 2 回合运行至第 26 回合，完成三次往返、24 次移动，合同结束时返回出发城市。测试保持目的地忠诚度稳定。
- 离线从 6,048 组 v43 存档状态重新载入，覆盖每城 36 个槽位、两代桥区、三种跨度、六个方向和所有健康或受损组合。选址、预览、清理、科技解锁、资源登记和双语文本检查通过。

# v46 本地候选版验收

2026-11-18，Windows Steam DX12 单人实测。升级基线为已公开的 v43。载入含局部损坏三格桥的 v43 测试存档后，三个桥格都处于受损状态。

在同一座城市建造两座同跨度、同朝向的三格桥。分别破坏两桥，连续使用生产面板的原生区域维修入口。第一次完成后，一座桥的三格全部修复，另一座的三格仍然损坏。第二次完成后，两座桥均可通行。测试向生产队列补充了生产力。原版同城双运河测试也观察到每次修复一条。

实机勇士从岸上进入健康桥后掠夺一次，国库从 1510 增至 2010。整座桥断开，另一座完好。重复掠夺按钮不可用，勇士可以退回岸上。另测岸上的勇士无法步行进入断桥，桨帆船仍可驶入断桥的中间水格。

同一份大兴第 4 回合存档、相同模组组合，按玩家 0 的回合结束和重新激活日志计时，每次经过 39 个其他席位。日志时间戳精度为一秒。

| 本地版本 | 第 4→5 回合 | 第 5→6 回合 | 第 6→7 回合 |
| --- | ---: | ---: | ---: |
| v44 | 39 秒 | 40 秒 | 39 秒 |
| v45 | 4 秒 | 5 秒 | 4 秒 |
| v46 | 4 秒 | 4 秒 | 4 秒 |

数据库回归核实 108 个通行建筑类型和零个自定义维修项目。离线测试覆盖 132 组旧桥逐格损坏状态、六个朝向、存读档和归属变更。三个原生测试程序通过。v46 的回合耗时与单位实际移动均在 DX12 测量。

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
