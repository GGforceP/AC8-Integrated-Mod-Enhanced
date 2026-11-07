# Build 26002268 玩家武器覆盖检查

检查日期：2026-11-07。游戏版本：Steam 1.01.002，Build 26002268。Mod：Enhanced v2.6.1，完整强化与 HOTAS 同时启用。

已在用户正常启动的游戏中读取玩家机型参数表。36 份表均为 `LivePlayerParameterDataTable`，包含任务专用和机型变体；每表读取 `SpWeaponID1` 至 `SpWeaponID4`，每表包含 31 级改装参数。

## 覆盖结果

- 36 份表中出现 31 种非空特殊武器 ID，全部能对应 Modern Missile Mod 1.1.0 HOTAS 预设中的条目。
- 加上标准导弹 MSL 和三种原始机炮伤害型号，共计 README 中的 35 个武器条目。在锁定距离、备弹及伤害的约定范围内，每个条目至少有一项变化。
- 独立读取玩家武器默认对象，126 项字段全部等于目标值；另读取 `DT_WeaponSettings` 的 C.STORY、EASY 两行，4 项字段全部等于目标值。合计 130 项。
- 读取 36 × 31 级机型储备参数，枚举出与 Mod 事务一致的 7,681 项正数备弹字段。以事先记录的同 Build 原版数据为基准，对每表首级的机炮、标准导弹、首槽单挂及双挂备弹作 144 项独立比较，全部符合预设。标准导弹储备保持原值。
- 本次日志在游戏就绪和任务初始化时均显示 `hotas_stats=130 hotas_ammo=7681`；任务初始化的 `written=0` 表示没有重复放大备弹。

这里的 7,681 是 Mod 备弹事务覆盖的字段数。当前全部改装等级已读取，独立原版快照比较覆盖上述 144 项；这两个统计采用不同的验证范围。

## 玩家机型表与特殊武器

名称使用游戏资源标识。第四槽在这 36 份表中均为空。

| 玩家机型表 | 特武 1 | 特武 2 | 特武 3 | 特武 4 |
|---|---|---|---|---|
| `IP2041_av8b` | 4AGM | UGB | RKT | — |
| `PP0001_a10c` | 4AGM | UGB | RKT | — |
| `PP0002_f02a` | LASM | UGB | HVAA | — |
| `PP0003_f04e` | HVAA | UGB | MGP | — |
| `PP0004_f15c` | 4AAM | HCAA | SASM | — |
| `PP0005_f22a` | QAAM | 4AAM | XSDB | — |
| `PP0006_f35c` | LACM | HCAA | 8AGM | — |
| `PP0007_f18c` | 4AAM | UGB | LASM | — |
| `PP0008_j39e` | SASM | 6AGM | LAAM | — |
| `PP0009_su34` | 4AGM | UGBL | HCAA | — |
| `PP0010_e18g` | ESM | 2AAM | ECM | — |
| `PP0011_typn` | 4AAM | LAAM | 8AGM | — |
| `PP0012_f15j` | HPAA | HCAA | UGB | — |
| `PP0013_a06e` | LAGM | LASM | UGB | — |
| `PP0013_a06e_ms15` | LAGM | LASM | UGB | — |
| `PP0014_rflm` | HCAA | LACM | LAAM | — |
| `PP0015_su25` | 4AGM | SFFS | MGP | — |
| `PP0016_x40a` | UAVT | EMLB | QAAM | — |
| `PP0017_mr2k` | UGB | 4AAM | LASM | — |
| `PP0018_fa36` | SASM | HPAA | SOD | — |
| `PP0019_ea36` | IEWS | 4AAM | XSDB | — |
| `PP0020_m29a` | HCAA | HPAA | LAGM | — |
| `PP0021_su57` | QAAM | HCAA | LACM | — |
| `PP0022_f16c` | 2AAM | QAAM | LAGM | — |
| `PP0023_f14d` | LAAM | SAAM | GPB | — |
| `PP0024_f18f` | LASM | 4AAM | GPB | — |
| `PP0025_f15e` | XSDB | SFFS | HCAA | — |
| `PP0026_su47` | SAAM | UGB | HPAA | — |
| `PP0027_m21b` | SASM | QAAM | MGP | — |
| `PP0028_su35` | 6AAM | LAGM | HVAA | — |
| `PP0029_m31b` | LAAM | SAAM | QAAM | — |
| `PP0030_su33` | QAAM | RKT | HVAA | — |
| `PP0031_e06b` | ECM | LAGM | ESM | — |
| `PP0032_f18e` | 6AAM | SOD | QAAM | — |
| `PP0034_f14a` | HVAA | SAAM | UGB | — |
| `PP0038_adfx02_L001` | MPBM | TLS | ECM | — |

## 枚举中存在但未出现在上述玩家挂载表的武器

`ELiveWeaponID` 还包含 8AAM、EML、GRKT、PLSL、UAV、FAEB、PGUN、ADMM、EMLT 等名称，以及子弹体、任务辅助和 AI 专用条目。这些名称没有出现在本次 36 份玩家机型表的 4 个特殊武器槽中；仅凭枚举存在不能认定玩家可挂载，也不能认定原作者漏改。没有为这些条目添加新的平衡参数。

## 验证范围

本次外部检查只申请进程查询和内存读取权限，通过游戏反射信息确定结构及字段偏移。没有向游戏写值、执行远程函数、重载 Mod 或操作存档。检查反映上述 Build 和已加载玩家参数表的覆盖情况，后续 Build 或新增机型需重新核对。

字段回读证明配置数值已生效；每种武器的实弹命中结算、远距离飞行及每个任务的表现仍需分别试飞。EMLB 的 `LockonRange` 已回读为原始值 250，伤害为 100、对舰倍率字段为 200；该锁定字段的单位和实际截获效果仍待使用 X-40 挂载 EMLB 专项确认。MPBM 共用爆炸伤害区继续由游戏结算。

[全部武器数值](../README.md#hotas-武器数值) · [v2.6.1 发布说明](RELEASE-v2.6.1.md)
