# AC8 Integrated Mod Enhanced v2.6.0

适配 Steam 版 1.01.002，Build 26002268。仅限离线单人。

- 重新定位新版游戏的飞控输入、原生相机和头盔瞄准 Hook。保留上游 v2.5.2 的 WAR／PEACE、键盘接管、HUD、自由观察、导弹安装范围和附加 Mod 管理。
- 启动器和安装向导共用包内 EXE 指纹。原生模块另行核对 PE 标识和入口指令。
- Enhanced 从本仓库 main 分支读取稳定版标签，再从对应的 Release 下载。安装前校验 RSA 签名、ZIP 的 SHA-256 和包内文件清单。

## 验证范围

在 Build 26002268 的苏-35 离线任务中试飞，验证鼠标飞控、WAR／PEACE 双向切换、键盘接管、F3 两种视角、C 自由观察、HUD 更新及 F2 开关。完整导弹模块在启动和进入任务时各通过 375 项字段校验。覆盖安装测试保留了九个用户数据文件和原 Steam 启动项。

## 升级

关闭游戏和启动器，运行 **AC8-Integrated-Setup-v2.6.0.exe**。覆盖安装沿用 v2.5.2 的目录、Steam 启动项和玩家数据，并配置 Enhanced 更新公钥。便携版可将 **AC8-Integrated-v2.6.0-share.zip** 解压到独立目录。

[安装与更新说明](APP.md) · [GitHub 发布页](https://github.com/GGforceP/AC8-Integrated-Mod-Enhanced/releases/latest)

## English summary

Enhanced v2.6.0 supports Steam Build 26002268 (1.01.002). It ports the native input, camera and helmet-targeting hooks from CreeperUX’s v2.5.2. Tested in an offline Su-35 mission. Run Setup over the existing installation to retain player data and move to signed updates from the Enhanced repository’s main branch.
