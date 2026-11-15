# BridgeSpan 自由造桥

在《文明 VI》的浅海和湖面上修桥，让陆军和商人从两岸通行，船只仍可穿过桥下水域。

[English](README.en.md) · [Steam 创意工坊](https://steamcommunity.com/sharedfiles/filedetails/?id=3838759919) · [开发与打包](docs/DEVELOPMENT.md)

![BridgeSpan](workshop/preview.jpg)

## 当前版本

**v40**，对应已上传并验证下载的工坊包。工坊目前保持私密。

- 1 格石桥，以及 2 格、3 格跨海大桥，由城市生产；同一城市可以建多座。
- 陆军和商人只从桥的两端上下桥；船只可以经过桥身水格。
- 多个合法桥位用方案列表选择，预览桥身及 A/B 两岸；只有一个方案时直接确认。
- 可移除的地貌、改良设施会在开工前提示，取消不会清理。
- 支持 Windows Steam《风云变幻》单人游戏，支持与《和而不同》搭配使用。DX11、DX12 的实测范围见[验收记录](docs/VERIFICATION.md)。

## 安装与使用

工坊开放后，订阅并在“额外内容”启用即可使用完整功能，不需要外部启动器。

本地安装：退出游戏，将本仓库的 `mod` 文件夹复制到“文档/My Games/Sid Meier's Civilization VI/Mods”下并命名为 `BridgeSpan`，再在“额外内容”启用。工坊版和本地版使用同一模组 ID，请保留一种安装方式。

石桥在原版科技树需要“蒸汽动力”，在《和而不同》中需要“拱券”；跨海大桥需要“钢铁”。两类桥都需要“造船术”。在城市生产面板选桥，点击合法水格，检查方案、费用和移除提示后确认。

桥身必须是属于同一座生产城市的连续浅海或湖面，两岸是可用陆地，不能占用资源或其他区域。建有桥梁的存档请保持模组启用。

## 仓库结构

| 路径 | 内容 |
| --- | --- |
| `mod/` | v40 完整可安装包，含 Lua、SQL、界面、编译美术资源和原生模块 |
| `native/` | 对应的原生 C/C++ 源码、MinHook 源码及构建入口 |
| `tests/` | 选址、方案面板、清理、科技解锁、损坏与健康检查的离线回归 |
| `scripts/` | 包完整性验证、离线测试与 ZIP 打包 |
| `workshop/` | 工坊中英文说明、封面、截图及顺序 |
| `release-manifest.json` | v40 的 72 个发布文件 SHA-256 清单 |

快速验证与打包：

```sh
python scripts/verify.py
npm ci
python scripts/test.py
python scripts/package.py
```

生成 `dist/BridgeSpan-v40.zip`。开发者重编原生模块的环境要求和命令见[开发说明](docs/DEVELOPMENT.md)。

## 反馈与许可

反馈时请附桥位截图、复现步骤和启用模组；有问题发生前的存档更好。

项目代码采用 [MIT](LICENSE)。MinHook 保留其独立许可证和署名，见 [第三方说明](native/THIRD_PARTY_NOTICES.txt)。仓库不包含游戏原版 DLL；原生模块在运行时加载本机已安装的游戏。
