# AC8 Integrated Mod Enhanced v2.6.1

**Steam 1.01.002, Build 26002268. Offline single-player only.** v2.6.1 adds an optional HOTAS weapon preset. v2.6.0 ported the v2.5.2 flight input, camera and helmet-targeting hooks to this build. [v2.6.1 release notes](docs/RELEASE-v2.6.1.md) · [v2.6.0 release notes](docs/RELEASE-v2.6.0.md)

Enable **HOTAS weapon stats** under the installation choices on the left of the launcher and save. It is off by default and takes effect on the next offline launch. The preset applies lock-on range, reserve ammunition and damage to player weapons. It works with all three installation modes. For example, 6AAM gets a 10 km lock-on range, twice the reserve and 200 direct damage. Actual missile reach still depends on speed and flight lifetime. [Modern Missile Mod by AquilaZGame](https://www.nexusmods.com/acecombat8wingsoftheve/mods/154?tab=description)

All 35 player-weapon entries in the supplied HOTAS preset are listed below, including three gun damage variants. Arrows show stock values on the pinned build and the HOTAS targets. Reserve multipliers apply to each aircraft and upgrade level, with separate single-rack and paired-rack counts.

On 2026-11-07, a live Build 26002268 inspection read all four special-weapon slots in 36 player-aircraft parameter tables, including mission-specific entries and variants. All 31 special-weapon IDs were covered by HOTAS; the standard missile and three gun variants account for the remaining four entries above. No wholly unchanged weapon entry was found within this scope. Independent readback also verified 126 weapon fields and four difficulty fields, with reserve inspection covering all 31 levels per table. [Coverage evidence and limits](docs/WEAPON-COVERAGE-26002268.md)

| Category | Weapon | Lock-on range (km) | Reserve (single / paired) | Direct damage | Area damage |
|---|---|---:|---:|---:|---:|
| AAM | MSL | 2 → 5 | ×1 / ×1 | 40 → 100 | — |
| AAM | 2AAM | 3 → 8 | ×1 / ×1 | 60 → 150 | — |
| AAM | 4AAM | 4 → 10 | ×2 / ×2 | 80 → 200 | — |
| AAM | 6AAM | 5 → 10 | ×2 / ×2 | 80 → 200 | — |
| AAM | HCAA | 2.2 → 10 | ×2 / ×2 | 60 → 150 | — |
| AAM | HPAA | 3.75 → 12 | ×2 / ×2 | 160 → 400 | — |
| AAM | HVAA | 5 → 40 | ×2 / ×2 | 80 → 200 | — |
| AAM | LAAM | 10 → 60 | ×2 / ×2 | 80 → 400 | — |
| AAM | QAAM | 2.4 → 5 | ×2 / ×2 | 80 → 200 | — |
| AAM | SAAM | 6 → 12 | ×2 / ×2 | 80 → 200 | — |
| AAM | SASM | 2.4 → 8 | ×2 / ×2 | 50 → 125 | 30 → 60 |
| AGM | 4AGM | 3 → 10 | ×3 / ×3 | 80 → 160 | — |
| AGM | 6AGM | 3.5 → 10 | ×3 / ×3 | — | — |
| AGM | 8AGM | 4 → 10 | ×3 / ×3 | — | — |
| AGM | LACM | 10 → 150 | ×2 / ×2 | 100 → 300 | 100 → 200 |
| AGM | LAGM | 6 → 100 | ×2 / ×2 | 60 → 180 | 60 → 120 |
| AGM | LASM | 6 → 100 | ×2 / ×2 | 80 → 400 | 80 → 160 |
| Bomb | GPB | 2.5 → 6.25 | ×2 / ×3 | 120 → 500 | — |
| Bomb | SFFS | — | ×2 / ×2 | 40 → 100 | — |
| Bomb | SOD | 5 → 12.5 | ×2 / ×2 | 100 → 150 | — |
| Bomb | UGB | — | ×2 / ×2 | 75 → 200 | — |
| Bomb | UGBL | — | ×2 / ×2 | 90 → 700 | — |
| Bomb | XSDB | 3 → 7.5 | ×3 / ×3 | 60 → 100 | — |
| Rocket | RKT | — | ×4 / ×4 | 40 → 50 | — |
| Gun | GUN_5 | — | ×2 / ×2 | 5 → 12.5 | — |
| Gun | GUN_10 | — | ×2 / ×2 | 10 → 25 | — |
| Gun | GUN_15 | — | ×2 / ×2 | 15 → 37.5 | — |
| Gun | MGP | — | ×2 / ×2 | 5 → 12.5 | — |
| Special | MPBM | 3.6 → 20 | ×3 / ×6 | 100 → 4000 | — |
| EW | ECM | — | ×10 / ×10 | — | — |
| Special | EMLB | 100 → 250 (raw) | ×10 / ×10 | 80 → 100 | — |
| EW | ESM | — | ×10 / ×10 | — | — |
| EW | IEWS | — | ×10 / ×10 | — | — |
| Laser | TLS | — | ×10 / ×10 | 40 → 50 | — |
| UAV | UAVT | — | ×15 / ×30 | — | — |

A dash refers to the values of the selected installation mode. ECM, ESM, IEWS and UAVT receive reserve multipliers within this three-stat integration. MSL and 2AAM keep a ×1 reserve multiplier and receive the lock-on and direct-damage values listed above.

The EMLB `LockonRange` entry is shown as the raw field value 100 → 250. Its unit and acquisition effect require a weapon-specific check.

| Additional damage field | Weapon | Stock → HOTAS |
|---|---|---:|
| `AntiShipDamageRate` | GUN_5 | 20 → 50 |
| `AntiShipDamageRate` | GUN_10 | 20 → 50 |
| `AntiShipDamageRate` | GUN_15 | 20 → 50 |
| `AntiShipDamageRate` | MGP | 100 → 200 |
| `AntiShipDamageRate` | EMLB | 100 → 200 |
| `SlipDamage` | TLS | 18 → 45 |

| MSL difficulty row | Lock-on range (km) | Direct damage |
|---|---:|---:|
| C.STORY | 2.85 → 5 | 56 → 100 |
| EASY | 2 → 5 | 40 → 100 |

The MPBM HOTAS damage entry applies to the player missile body. Its shared explosion area is handled by the game. Lock-on range sets the acquisition threshold, while actual reach also depends on speed, lifetime and target motion.

<details>
<summary>All full-mode parameter changes and their combined HOTAS values</summary>

Full mode uses all rows below. Guidance-only mode uses the `HomingForesightAmount` rows. Weapons sharing the same field, original value and target are grouped. Suffixes identify individual weapon resources. Values use the original game-field units.

| Weapon / resource | Field | Unit | Stock | Full mode | Full + HOTAS |
|---|---|---|---:|---:|---:|
| MSL / QAAM | `Acceleration` | cm/s² | 13888.8887 | 17361.1108 | 17361.1108 |
| MSL · C.STORY / MSL · EASY | `AccelerationKmph` | km/h/s | 500 | 625 | 625 |
| 2AAM / 4AAM / 6AAM / HCAA / HPAA / HVAA / LAAM / MSL / QAAM / SAAM / MSL · C.STORY / MSL · EASY | `AreaOfEffectDamage` | raw | 0 | 30 | 30 |
| SASM | `AreaOfEffectDamage` | raw | 30 | 30 | 60 |
| 2AAM / 4AAM / 6AAM / HCAA / HPAA / HVAA / LAAM / MSL / QAAM / SAAM | `ExplosionRadius` | cm | 0 | 5000 | 5000 |
| MSL · C.STORY / MSL · EASY | `ExplosionRadiusMeters` | m | 0 | 50 | 50 |
| MSL · C.STORY / MSL · EASY | `HomingCloudThreshold` | raw | 0.300000012 | 0 | 0 |
| MSL | `HomingCloudThreshold` | raw | 0.300000012 | 0 | 0 |
| HPAA | `HomingForesightAmount` | factor | 0 | 0.75 | 0.75 |
| HCAA | `HomingForesightAmount` | factor | 0 | 0.8 | 0.8 |
| HVAA | `HomingForesightAmount` | factor | 0 | 0.85 | 0.85 |
| 4AAM / 6AAM / LAAM / SASM | `HomingForesightAmount` | factor | 0 | 0.9 | 0.9 |
| 2AAM | `HomingForesightAmount` | factor | 0 | 0.95 | 0.95 |
| MSL | `HomingForesightAmount` | factor | 0 | 1 | 1 |
| MSL · EASY | `HomingForesightAmount` | factor | 0.100000001 | 1 | 1 |
| SAAM | `HomingForesightAmount` | factor | 0.100000001 | 0.95 | 0.95 |
| MSL · C.STORY | `HomingForesightAmount` | factor | 0.200000003 | 1 | 1 |
| QAAM | `HomingForesightAmount` | factor | 0.400000006 | 1 | 1 |
| MSL · C.STORY / MSL · EASY | `HomingReductionInCloud` | raw | 0.300000012 | 0 | 0 |
| MSL | `HomingReductionInCloud` | raw | 0.300000012 | 0 | 0 |
| 4AAM | `LifeTime` | s | 20 | 25 | 25 |
| 6AAM | `LifeTime` | s | 22.5 | 25 | 25 |
| LAAM | `LifeTime` | s | 25 | 50 | 50 |
| MSL / MSL · C.STORY / MSL · EASY | `LifeTime` | s | 9 | 15 | 15 |
| MSL / MSL · C.STORY / MSL · EASY | `LockonAccelerationTime` | s | 1 | 2.75 | 2.75 |
| QAAM | `LockonAngle` | ° | 120 | 160 | 160 |
| MSL | `LockonAngle` | ° | 32.5 | 160 | 160 |
| MSL · EASY | `LockonAngle` | ° | 36.25 | 160 | 160 |
| MSL · C.STORY | `LockonAngle` | ° | 40 | 160 | 160 |
| MSL / MSL · C.STORY / MSL · EASY | `LockonInitialSpeed` | raw | 60 | 40 | 40 |
| MSL / MSL · C.STORY / MSL · EASY | `LockonMaximumSpeed` | raw | 60 | 640 | 640 |
| LAAM | `LockonRange` | cm | 1000000 | 2000000 | 6000000 |
| MSL | `LockonRange` | cm | 200000 | 240000 | 500000 |
| 4AAM | `LockonRange` | cm | 400000 | 1000000 | 1000000 |
| 6AAM | `LockonRange` | cm | 500000 | 1000000 | 1000000 |
| MSL · EASY | `LockonRangeInMeters` | m | 2000 | 2400 | 5000 |
| MSL · C.STORY | `LockonRangeInMeters` | m | 2850 | 2400 | 5000 |
| MSL | `LockonRangeReductionInCloud` | raw | 0.200000003 | 0 | 0 |
| MSL · C.STORY / MSL · EASY | `LockonRangeReductionInCloud` | raw | 0.200000003 | 0 | 0 |
| QAAM | `MaxHomingAngle` | ° | 120 | 160 | 160 |
| MSL | `MaxHomingAngle` | ° | 75 | 160 | 160 |
| MSL · EASY | `MaxHomingAngle` | ° | 77.5 | 160 | 160 |
| MSL · C.STORY | `MaxHomingAngle` | ° | 80 | 160 | 160 |
| LAAM | `MaxLoadedCount` | raw | 2 | 4 | 4 |
| MSL | `MaxRotationAngle` | °/s | 40 | 150 | 150 |
| MSL · EASY | `MaxRotationAngle` | °/s | 50 | 150 | 150 |
| MSL · C.STORY | `MaxRotationAngle` | °/s | 60 | 150 | 150 |
| QAAM | `MaxRotationAngle` | °/s | 75 | 150 | 150 |
| MSL · C.STORY / MSL · EASY | `ProximityFuseMeters` | m | 0 | 1 | 1 |
| 2AAM / 4AAM / 6AAM / HCAA / HPAA / HVAA / LAAM / MSL / QAAM | `ProximityFuseRadiusSquared` | cm² | 0 | 10000 | 10000 |
| MSL | `SelectionAssistAngle` | raw | 5 | 0 | 0 |
| MSL | `SelectionAssistRange` | raw | 80000 | 0 | 0 |
| MSL · C.STORY / MSL · EASY | `SpeedMaxKmph` | km/h | 3900 | 5250 | 5250 |
| MSL | `SpeedMaximum` | cm/s | 108333.336 | 145833.34 | 145833.34 |
| QAAM | `SpeedMaximum` | cm/s | 116666.672 | 145833.34 | 145833.34 |
| LAAM | `TargetSelectionMidRange` | cm | 1000000 | 2000000 | 2000000 |
| 2AAM / 4AAM / 6AAM / HCAA / HPAA / HVAA / LAAM / MSL / QAAM / SAAM / MSL · C.STORY / MSL · EASY | `bShouldDetonateOnMiss` | raw | false | true | true |
| MSL / MSL · EASY | `damage` | raw | 40 | 80 | 100 |
| MSL · C.STORY | `damage` | raw | 56 | 80 | 100 |

The underlying full preset validates 375 fields and changes 287 values. These changes and their HOTAS overrides are grouped into 59 rows above. Additional HOTAS writes appear in the 35-weapon table.

</details>

[Modern Missile Mod 1.1.0 HOTAS by AquilaZGame](https://www.nexusmods.com/acecombat8wingsoftheve/mods/154?tab=description)

**2.5.2:** extra UE4SS mods keep the asset files in their own folders (for example PW-MkI), and deployed extra mods are no longer archived after every session. **2.5.1:** a Windows setup program with one-click updates from GitHub, self-checks and repair, and a Steam launch option that never needs changing again; WAR is now the default flight control (F4 switches to PEACE). Other UE4SS mods can be used alongside (add a zip or folder in the launcher), a "save flight records" switch in the launcher (off by default), and sessions no longer copy the DLLs. **2.4.2:** fixes the keyboard-takeover lag in WAR. Since 2.4.1 the nose reference gun cross can be switched with **Alt+F7**.

The mouse sets a direction and the mod coordinates the aircraft's attitude to fly to the ring. **F4** toggles two flight controllers:
- **WAR** (default): built on a reconstructed model of AC8's rotation law with a War Thunder-style mouse-instructor structure: straight nose paths, smooth levelling once the mouse rests, quicker reversals, and War Thunder-style keyboard takeover.
- **PEACE**: the unchanged CLASSIC 2.0.

Also included:
- a reference gun cross at the nose, visible in C free look as well;
- HMD target selection along the view direction while holding C;
- frame-synchronous input and configurable keys;
- a fix for the mod camera/HUD not returning after cutscenes.

[2.5.2 changes](docs/RELEASE-v2.5.2.md) · [2.5.1 changes](docs/RELEASE-v2.5.1.md) · [the installed app](docs/APP.md) · [2.4.2 changes](docs/RELEASE-v2.4.2.md) · [2.4.1 changes](docs/RELEASE-v2.4.1.md) · [2.4.0 changes (English summary at the end)](docs/RELEASE-v2.4.0.md).

Close the game and launcher and run **AC8-Integrated-Setup-v2.6.1.exe**. Setup upgrades an existing v2.6.0 or v2.5.2 installation in place and retains player data and the Steam launch entry. The first Enhanced setup installs the fork’s update key. Later updates use this repository’s stable releases from main. [Downloads](https://github.com/GGforceP/AC8-Integrated-Mod-Enhanced/releases/latest)

For a portable installation, extract **AC8-Integrated-v2.6.1-share.zip** to a new folder outside the game, run AC8 Integrated.exe or Setup.cmd, and paste the generated Steam launch option.

A saved PEACE selection moves to WAR once with 2.5; switching back with F4 or `control_mode=0` is kept afterwards.

Based on [CreeperUX/AC8-Integrated-Mod](https://github.com/CreeperUX/AC8-Integrated-Mod) v2.5.2 and [FletcherMiya/AC8-Mouse-Aim](https://github.com/FletcherMiya/AC8-Mouse-Aim). [Licenses and credits](THIRD_PARTY_NOTICES.md)

[简体中文](README.md)
