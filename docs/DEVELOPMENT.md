# 开发与打包

`mod/` 是当前 v46 的完整包，也是 Lua、SQL、XML 界面的维护入口。编译美术资源随包提交，`art/damage/` 包含受损桥梁的可编辑 Blender 源文件、资源模板与构建流程；其他历史美术工程仍在原开发工作区。旧工程师版本、外置 Axis 启动器、个人存档和运行日志未迁入。

## 包验证与离线测试

需要 Python 3.10+；Lua 测试另需 Node.js 与 npm。

```sh
python scripts/verify.py
npm ci
python scripts/test.py
python scripts/package.py
```

验证会比较文件集合、`.modinfo` 声明和每个 SHA-256。打包输出只包含 `BridgeSpan/` 下的 67 个模组文件。测试采用游戏接口模拟，不等同于真实游戏渲染、寻路或多人验收。

`release-manifest.json` 是冻结版本基线。开发修改后验证失败是预期行为；完成相应验收、升级 `.modinfo` 版本后，再更新发布清单，不要用重写哈希掩盖未验证改动。

## 原生模块

需要 Windows x64、Visual Studio 2022 C++ Build Tools（含 Windows SDK）、Python，以及合法安装的《文明 VI：风云变幻》。在 **x64 Native Tools Command Prompt for VS 2022** 中运行：

```bat
native\build.cmd "D:\SteamLibrary\steamapps\common\Sid Meier's Civilization VI\DLC\Expansion2\Binaries\Win64\GameCore_XP2_FinalRelease.dll"
native\test.cmd "D:\SteamLibrary\steamapps\common\Sid Meier's Civilization VI\DLC\Expansion2\Binaries\Win64\GameCore_XP2_FinalRelease.dll"
```

将示例路径改成本机路径。准备脚本只读取原版 DLL 的导出信息并生成构建输入，不复制或上传该 DLL。`native/bridge_axis.c` 是当前模块使用的通行规则源码，不依赖旧版外部 Axis 运行器。

输出为 `native/build/GameCore_XP2_BridgeSpan_FinalRelease.dll`，不会自动覆盖 `mod/` 中已验收的二进制。不同编译器时间戳可能导致文件哈希不同；新编译结果需要单独验收。已发布模块对游戏指纹和接口有检查，游戏更新后的适配应重新验证对应接口，不能只改版本号。

## 发布

工坊条目 ID 为 `3838759919`，模组 ID 保存在 `.modinfo`。GitHub 仓库与工坊可见性分别管理；本仓库没有自动发布工坊的脚本或账号凭据。

工坊文案与截图在 `workshop/`；图片展示顺序见 `gallery-order.json`。修改安装文件前先退出游戏，防止 UI 热加载影响正在玩的存档。
