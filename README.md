# AC8 Integrated Mod Enhanced v2.6.1

**适配 Steam 版 1.01.002，Build 26002268。仅限离线单人。**

**v2.6.1** 新增可选的 HOTAS 武器数值，采用 Modern Missile Mod 1.1.0 的锁定距离、备弹和伤害。**v2.6.0** 基于上游 v2.5.2，将鼠标飞控、原生相机和头盔瞄准移植到当前游戏 Build。[v2.6.1 更新说明](docs/RELEASE-v2.6.1.md) · [v2.6.0 更新说明](docs/RELEASE-v2.6.0.md)

## HOTAS 武器数值

在启动器左侧「游戏与安装内容」的安装范围下方勾选 **启用 HOTAS 武器数值**，然后点「保存设置」。默认关闭，下次离线启动生效。这个预设可以和三种安装范围独立搭配，鼠标键盘也可使用。与完整强化重叠的数值以 HOTAS 为准。

按锁定距离、备弹和伤害这三类范围，原 HOTAS 1.1.0 预设的全部 35 个玩家武器条目均已覆盖，机炮按三个原始伤害型号分别列出。箭头为当前 Build 的原值 → HOTAS 目标值，备弹为原机型、改装等级储备量的乘数。单挂和双挂分别对应游戏的两套备弹字段。

2026-11-07 已在运行中的 Build 26002268 核对 36 份玩家机型参数表（含任务专用及变体），逐一读取 4 个特殊武器槽。出现的 31 种特殊武器均在 HOTAS 预设中；加上标准导弹与三种机炮型号，对应下表全部 35 项，未发现整项漏改。另独立回读通过 126 项武器字段和 4 项难度字段，备弹检查覆盖每表 31 级。[完整覆盖检查记录](docs/WEAPON-COVERAGE-26002268.md)

| 类别 | 武器 | 锁定距离（km） | 备弹（单挂 / 双挂） | 直接伤害 | 范围伤害 |
|---|---|---:|---:|---:|---:|
| 空对空 | MSL | 2 → 5 | ×1 / ×1 | 40 → 100 | — |
| 空对空 | 2AAM | 3 → 8 | ×1 / ×1 | 60 → 150 | — |
| 空对空 | 4AAM | 4 → 10 | ×2 / ×2 | 80 → 200 | — |
| 空对空 | 6AAM | 5 → 10 | ×2 / ×2 | 80 → 200 | — |
| 空对空 | HCAA | 2.2 → 10 | ×2 / ×2 | 60 → 150 | — |
| 空对空 | HPAA | 3.75 → 12 | ×2 / ×2 | 160 → 400 | — |
| 空对空 | HVAA | 5 → 40 | ×2 / ×2 | 80 → 200 | — |
| 空对空 | LAAM | 10 → 60 | ×2 / ×2 | 80 → 400 | — |
| 空对空 | QAAM | 2.4 → 5 | ×2 / ×2 | 80 → 200 | — |
| 空对空 | SAAM | 6 → 12 | ×2 / ×2 | 80 → 200 | — |
| 空对空 | SASM | 2.4 → 8 | ×2 / ×2 | 50 → 125 | 30 → 60 |
| 空对地 | 4AGM | 3 → 10 | ×3 / ×3 | 80 → 160 | — |
| 空对地 | 6AGM | 3.5 → 10 | ×3 / ×3 | — | — |
| 空对地 | 8AGM | 4 → 10 | ×3 / ×3 | — | — |
| 空对地 | LACM | 10 → 150 | ×2 / ×2 | 100 → 300 | 100 → 200 |
| 空对地 | LAGM | 6 → 100 | ×2 / ×2 | 60 → 180 | 60 → 120 |
| 空对地 | LASM | 6 → 100 | ×2 / ×2 | 80 → 400 | 80 → 160 |
| 炸弹 | GPB | 2.5 → 6.25 | ×2 / ×3 | 120 → 500 | — |
| 炸弹 | SFFS | — | ×2 / ×2 | 40 → 100 | — |
| 炸弹 | SOD | 5 → 12.5 | ×2 / ×2 | 100 → 150 | — |
| 炸弹 | UGB | — | ×2 / ×2 | 75 → 200 | — |
| 炸弹 | UGBL | — | ×2 / ×2 | 90 → 700 | — |
| 炸弹 | XSDB | 3 → 7.5 | ×3 / ×3 | 60 → 100 | — |
| 火箭 | RKT | — | ×4 / ×4 | 40 → 50 | — |
| 机炮 | GUN_5 | — | ×2 / ×2 | 5 → 12.5 | — |
| 机炮 | GUN_10 | — | ×2 / ×2 | 10 → 25 | — |
| 机炮 | GUN_15 | — | ×2 / ×2 | 15 → 37.5 | — |
| 机炮 | MGP | — | ×2 / ×2 | 5 → 12.5 | — |
| 特殊武器 | MPBM | 3.6 → 20 | ×3 / ×6 | 100 → 4000 | — |
| 电子战 | ECM | — | ×10 / ×10 | — | — |
| 特殊武器 | EMLB | 100 → 250（原始字段） | ×10 / ×10 | 80 → 100 | — |
| 电子战 | ESM | — | ×10 / ×10 | — | — |
| 电子战 | IEWS | — | ×10 / ×10 | — | — |
| 激光 | TLS | — | ×10 / ×10 | 40 → 50 | — |
| 无人机 | UAVT | — | ×15 / ×30 | — | — |

“—” 对应所选安装范围的基础数值。ECM、ESM、IEWS 和 UAVT 在本次三类参数范围内采用备弹倍率。MSL 与 2AAM 的备弹倍率为 ×1，其锁定距离和直接伤害按上表生效。

EMLB 的 `LockonRange` 按原始字段 100 → 250 列出，单位及实际锁定效果留待该武器实测。

| 其他伤害字段 | 武器 | 原值 → HOTAS |
|---|---|---:|
| `AntiShipDamageRate` | GUN_5 | 20 → 50 |
| `AntiShipDamageRate` | GUN_10 | 20 → 50 |
| `AntiShipDamageRate` | GUN_15 | 20 → 50 |
| `AntiShipDamageRate` | MGP | 100 → 200 |
| `AntiShipDamageRate` | EMLB | 100 → 200 |
| `SlipDamage` | TLS | 18 → 45 |

| 标准弹难度表 | 锁定距离（km） | 直接伤害 |
|---|---:|---:|
| C.STORY | 2.85 → 5 | 56 → 100 |
| EASY | 2 → 5 | 40 → 100 |

MPBM 的本次 HOTAS 伤害写入面向玩家弹体。其共用爆炸伤害区由游戏结算。锁定距离决定截获门槛，实际飞行距离还取决于当前模式的速度、寿命与目标运动。

<details>
<summary>展开完整强化的全部参数及与 HOTAS 叠加后的数值</summary>

完整强化按下表设置各字段；仅比例引导模式使用其中的 `HomingForesightAmount` 行。相同字段、原值和目标值的武器合并显示，带后缀的名称标识游戏中的具体武器资源。表内采用游戏字段的原始单位。

| 武器 / 资源 | 字段 | 单位 | 原值 | 完整强化 | 完整强化 + HOTAS |
|---|---|---|---:|---:|---:|
| MSL / QAAM | `Acceleration` | cm/s² | 13888.8887 | 17361.1108 | 17361.1108 |
| MSL · C.STORY / MSL · EASY | `AccelerationKmph` | km/h/s | 500 | 625 | 625 |
| 2AAM / 4AAM / 6AAM / HCAA / HPAA / HVAA / LAAM / MSL / QAAM / SAAM / MSL · C.STORY / MSL · EASY | `AreaOfEffectDamage` | 游戏原始值 | 0 | 30 | 30 |
| SASM | `AreaOfEffectDamage` | 游戏原始值 | 30 | 30 | 60 |
| 2AAM / 4AAM / 6AAM / HCAA / HPAA / HVAA / LAAM / MSL / QAAM / SAAM | `ExplosionRadius` | cm | 0 | 5000 | 5000 |
| MSL · C.STORY / MSL · EASY | `ExplosionRadiusMeters` | m | 0 | 50 | 50 |
| MSL · C.STORY / MSL · EASY | `HomingCloudThreshold` | 游戏原始值 | 0.300000012 | 0 | 0 |
| MSL | `HomingCloudThreshold` | 游戏原始值 | 0.300000012 | 0 | 0 |
| HPAA | `HomingForesightAmount` | 倍率 | 0 | 0.75 | 0.75 |
| HCAA | `HomingForesightAmount` | 倍率 | 0 | 0.8 | 0.8 |
| HVAA | `HomingForesightAmount` | 倍率 | 0 | 0.85 | 0.85 |
| 4AAM / 6AAM / LAAM / SASM | `HomingForesightAmount` | 倍率 | 0 | 0.9 | 0.9 |
| 2AAM | `HomingForesightAmount` | 倍率 | 0 | 0.95 | 0.95 |
| MSL | `HomingForesightAmount` | 倍率 | 0 | 1 | 1 |
| MSL · EASY | `HomingForesightAmount` | 倍率 | 0.100000001 | 1 | 1 |
| SAAM | `HomingForesightAmount` | 倍率 | 0.100000001 | 0.95 | 0.95 |
| MSL · C.STORY | `HomingForesightAmount` | 倍率 | 0.200000003 | 1 | 1 |
| QAAM | `HomingForesightAmount` | 倍率 | 0.400000006 | 1 | 1 |
| MSL · C.STORY / MSL · EASY | `HomingReductionInCloud` | 游戏原始值 | 0.300000012 | 0 | 0 |
| MSL | `HomingReductionInCloud` | 游戏原始值 | 0.300000012 | 0 | 0 |
| 4AAM | `LifeTime` | s | 20 | 25 | 25 |
| 6AAM | `LifeTime` | s | 22.5 | 25 | 25 |
| LAAM | `LifeTime` | s | 25 | 50 | 50 |
| MSL / MSL · C.STORY / MSL · EASY | `LifeTime` | s | 9 | 15 | 15 |
| MSL / MSL · C.STORY / MSL · EASY | `LockonAccelerationTime` | s | 1 | 2.75 | 2.75 |
| QAAM | `LockonAngle` | ° | 120 | 160 | 160 |
| MSL | `LockonAngle` | ° | 32.5 | 160 | 160 |
| MSL · EASY | `LockonAngle` | ° | 36.25 | 160 | 160 |
| MSL · C.STORY | `LockonAngle` | ° | 40 | 160 | 160 |
| MSL / MSL · C.STORY / MSL · EASY | `LockonInitialSpeed` | 游戏原始值 | 60 | 40 | 40 |
| MSL / MSL · C.STORY / MSL · EASY | `LockonMaximumSpeed` | 游戏原始值 | 60 | 640 | 640 |
| LAAM | `LockonRange` | cm | 1000000 | 2000000 | 6000000 |
| MSL | `LockonRange` | cm | 200000 | 240000 | 500000 |
| 4AAM | `LockonRange` | cm | 400000 | 1000000 | 1000000 |
| 6AAM | `LockonRange` | cm | 500000 | 1000000 | 1000000 |
| MSL · EASY | `LockonRangeInMeters` | m | 2000 | 2400 | 5000 |
| MSL · C.STORY | `LockonRangeInMeters` | m | 2850 | 2400 | 5000 |
| MSL | `LockonRangeReductionInCloud` | 游戏原始值 | 0.200000003 | 0 | 0 |
| MSL · C.STORY / MSL · EASY | `LockonRangeReductionInCloud` | 游戏原始值 | 0.200000003 | 0 | 0 |
| QAAM | `MaxHomingAngle` | ° | 120 | 160 | 160 |
| MSL | `MaxHomingAngle` | ° | 75 | 160 | 160 |
| MSL · EASY | `MaxHomingAngle` | ° | 77.5 | 160 | 160 |
| MSL · C.STORY | `MaxHomingAngle` | ° | 80 | 160 | 160 |
| LAAM | `MaxLoadedCount` | 游戏原始值 | 2 | 4 | 4 |
| MSL | `MaxRotationAngle` | °/s | 40 | 150 | 150 |
| MSL · EASY | `MaxRotationAngle` | °/s | 50 | 150 | 150 |
| MSL · C.STORY | `MaxRotationAngle` | °/s | 60 | 150 | 150 |
| QAAM | `MaxRotationAngle` | °/s | 75 | 150 | 150 |
| MSL · C.STORY / MSL · EASY | `ProximityFuseMeters` | m | 0 | 1 | 1 |
| 2AAM / 4AAM / 6AAM / HCAA / HPAA / HVAA / LAAM / MSL / QAAM | `ProximityFuseRadiusSquared` | cm² | 0 | 10000 | 10000 |
| MSL | `SelectionAssistAngle` | 游戏原始值 | 5 | 0 | 0 |
| MSL | `SelectionAssistRange` | 游戏原始值 | 80000 | 0 | 0 |
| MSL · C.STORY / MSL · EASY | `SpeedMaxKmph` | km/h | 3900 | 5250 | 5250 |
| MSL | `SpeedMaximum` | cm/s | 108333.336 | 145833.34 | 145833.34 |
| QAAM | `SpeedMaximum` | cm/s | 116666.672 | 145833.34 | 145833.34 |
| LAAM | `TargetSelectionMidRange` | cm | 1000000 | 2000000 | 2000000 |
| 2AAM / 4AAM / 6AAM / HCAA / HPAA / HVAA / LAAM / MSL / QAAM / SAAM / MSL · C.STORY / MSL · EASY | `bShouldDetonateOnMiss` | 游戏原始值 | false | true | true |
| MSL / MSL · EASY | `damage` | 游戏原始值 | 40 | 80 | 100 |
| MSL · C.STORY | `damage` | 游戏原始值 | 56 | 80 | 100 |

原完整强化配置包含 375 项字段校验，其中 287 项有基础数值修改。上表列出了这些修改以及 HOTAS 对同一批字段的覆盖，并按相同字段和数值合并为 59 组。HOTAS 的其余写入见前述 35 武器表。

</details>

[AquilaZGame 的 Modern Missile Mod 1.1.0 HOTAS 来源](https://www.nexusmods.com/acecombat8wingsoftheve/mods/154?tab=description)

## 鼠标飞控

**2.5.2 更新**：附加 Mod 会完整安装 Mod 自带的资源文件（例如 PW-MkI 的飞机资源），退出游戏后附加 Mod 不再重复备份。**2.5.1**：提供 Windows 安装程序，从 GitHub 一键更新、自动检查修复，Steam 启动选项以后不用再改；默认飞控改为 WAR（F4 可切回 PEACE）。还可以和其他 UE4SS Mod 一起使用（启动器中添加 zip 或文件夹即可），启动器新增“保存飞行记录”开关（默认关闭），会话不再复制 DLL。**2.4.2**：修复 WAR 中键盘接管的迟滞。2.4.1 起，机头参考准星（十字）可用 **Alt+F7** 开关。

鼠标指定方向，Mod 协调飞机姿态飞向圆环。按 **F4** 在两种飞控之间切换：
- **WAR**（默认）：基于还原的 AC8 转动规律，决策结构参考 War Thunder 鼠标教官；机头走直线，鼠标停下后平滑改平，来回拖动时反应更快，按住操纵键可按 War Thunder 规则接管。
- **PEACE**：原 CLASSIC 2.0。

还包括：
- 机头参考准星，按住 C 自由观察时也显示；
- 自由观察中的头瞄；
- 逐帧同步输入与自定义按键；
- 修复过场后模组相机／HUD 不恢复的问题。

- [v2.5.2 更新说明](docs/RELEASE-v2.5.2.md) · [v2.5.1 更新说明](docs/RELEASE-v2.5.1.md) · [安装版说明](docs/APP.md) · [v2.4.2 更新说明](docs/RELEASE-v2.4.2.md) · [v2.4.1 更新说明](docs/RELEASE-v2.4.1.md) · [v2.4.0 更新说明](docs/RELEASE-v2.4.0.md) · [WAR 飞控说明](docs/WAR-FLIGHT-CONTROL.md)
- [安装与三种范围](docs/INSTALL.md) · [游戏内调整](docs/IN-GAME-SETTINGS.md) · [自定义键位](docs/CUSTOM-KEYBINDINGS.md) · [快捷停用](docs/MOD-DISABLE.md)
- [按键参考](docs/KEYBINDINGS.md) · [控制原理](docs/CONTROL.md) · [原生 HUD 与参考准星](docs/NATIVE-UI-STYLE.md) · [头盔瞄准](docs/HELMET-SELECTION.md) · [其他 UE4SS Mod](docs/EXTRA-MODS.md) · [已知限制](docs/LIMITATIONS.md)
- [GitHub 下载](https://github.com/GGforceP/AC8-Integrated-Mod-Enhanced/releases/latest)

## 安装

关闭游戏和启动器，运行 **AC8-Integrated-Setup-v2.6.1.exe**。已安装 v2.6.0 或 v2.5.2 的用户可直接安装到原目录，沿用玩家设置、键位、附加 Mod 和 Steam 启动项。初次安装可按提示导入便携版设置。[安装版说明](docs/APP.md)

也可以继续使用便携版：下载完整的 share.zip（不要用 Source code ZIP），解压到游戏目录之外的新文件夹，双击 AC8 Integrated.exe（或运行 Setup.cmd），保存后把新生成的 Steam 启动选项替换进去。退出游戏时等待控制台清理完成。

## 从旧版本升级

- 首次从上游迁移时运行 Enhanced 安装程序。它会配置 Enhanced 更新公钥，此后的更新使用本仓库 main 分支的正式 Release。
- 便携版：不要覆盖旧目录，也不要复制旧版的 DLL 或 sessions。
- 2.5 起默认飞控为 WAR。以前保存为 PEACE 的设置会改为 WAR 一次；之后按 F4 或设置 `control_mode=0` 改回 PEACE，不会再被改动。旧值 1 → PEACE，2/4/5 → WAR。
- 设置文件里没有 `hud_boresight` 时，参考准星按显示处理。

**不保证原生圆环达到 120 Hz，也不保证 F1／通知对所有设备零性能影响。** WAR 未覆盖所有机型和任务，见 [已知限制](docs/LIMITATIONS.md)。

基于 [CreeperUX/AC8-Integrated-Mod](https://github.com/CreeperUX/AC8-Integrated-Mod) v2.5.2 及 [FletcherMiya/AC8-Mouse-Aim](https://github.com/FletcherMiya/AC8-Mouse-Aim)。[完整署名和许可](THIRD_PARTY_NOTICES.md)

[English overview](README.en.md)
