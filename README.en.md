# AC8 Integrated Mod Enhanced v2.6.0

**Steam 1.01.002, Build 26002268. Offline single-player only.** Enhanced ports the v2.5.2 flight input, camera and helmet-targeting hooks to this build. [v2.6.0 release notes](docs/RELEASE-v2.6.0.md)

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

Close the game and launcher and run **AC8-Integrated-Setup-v2.6.0.exe**. Setup upgrades the existing v2.5.2 installation in place and retains player data and the Steam launch entry. The first Enhanced setup installs the fork’s update key. Later updates use this repository’s stable releases from main. [Downloads](https://github.com/GGforceP/AC8-Integrated-Mod-Enhanced/releases/latest)

For a portable installation, extract **AC8-Integrated-v2.6.0-share.zip** to a new folder outside the game, run AC8 Integrated.exe or Setup.cmd, and paste the generated Steam launch option.

A saved PEACE selection moves to WAR once with 2.5; switching back with F4 or `control_mode=0` is kept afterwards.

Based on [CreeperUX/AC8-Integrated-Mod](https://github.com/CreeperUX/AC8-Integrated-Mod) v2.5.2 and [FletcherMiya/AC8-Mouse-Aim](https://github.com/FletcherMiya/AC8-Mouse-Aim). [Licenses and credits](THIRD_PARTY_NOTICES.md)

[简体中文](README.md)
