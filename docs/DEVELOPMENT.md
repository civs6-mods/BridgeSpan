# 开发与打包

`mod/` 是当前 v51 的完整包，也是 Lua、SQL、XML 界面的维护入口。编译美术资源随包提交，`art/damage/` 包含受损桥梁的可编辑 Blender 源文件、资源模板与构建流程；其他历史美术工程仍在原开发工作区。旧工程师版本、外置 Axis 启动器、个人存档和运行日志未迁入。

## 包验证与离线测试

需要 Python 3.10+；Lua 测试另需 Node.js 与 npm。

```sh
python scripts/verify.py
npm ci
python scripts/test.py
python scripts/package.py
```

验证会比较文件集合、`.modinfo` 声明和每个 SHA-256。打包输出只包含 `BridgeSpan/` 下的 66 个模组文件。测试采用游戏接口模拟，不等同于真实游戏渲染、寻路或多人验收。

`release-manifest.json` 是冻结版本基线。开发修改后验证失败是预期行为；完成相应验收、升级 `.modinfo` 版本后，再更新发布清单，不要用重写哈希掩盖未验证改动。

## 寻路与游戏核心

v47 通过游戏数据库里的桥面建筑登记通行能力。移动和商路均由游戏核心计算。历史版本的 C/C++ 源码保存在 `native/`，v46 及之前版本的编译流程可在相应提交查看。

## 发布

模组沿用工坊的整数版本号。v51 对应 Git 标签 `v51` 和安装包 `BridgeSpan-v51.zip`。诊断工具有独立的 `diagnostics-v*` 标签。

1. 准备正式版时，在 `mod/BridgeSpan.modinfo`、`release-manifest.json`、`workshop/item.json` 中填写相同的版本，把该版本发布说明写在 `CHANGELOG.md` 顶部，并更新中英文 README 的下载链接。
2. 完成回归，使用 `python scripts/package.py --tag v51` 验证版本和安装包。工坊与 GitHub 使用同一份文件清单。
3. 将发布提交推送到 `main`。在该提交创建标签，例如 `git tag -a v51 -m "BridgeSpan v51"`，再运行 `git push origin v51`。示例中的数字随本次正式版本替换。
4. 标签触发 GitHub Actions 核验标签、模组版本和文件哈希，运行离线回归，再把可直接解压安装的 ZIP 附到对应 GitHub Release。发布后在 [Releases](https://github.com/civs6-mods/BridgeSpan/releases) 核对附件。已发布版本需要修订时使用新版本号。

工坊条目 ID 为 `3838759919`，模组 ID 保存在 `.modinfo`。GitHub 仓库与工坊可见性分别管理；本仓库没有自动发布工坊的脚本或账号凭据。

工坊文案与截图在 `workshop/`；图片展示顺序见 `gallery-order.json`。修改安装文件前先退出游戏，防止 UI 热加载影响正在玩的存档。
