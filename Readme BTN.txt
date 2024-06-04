Hello everyone,

We present the "Better Than Nothing (BTN)" image for the Miyoo A30 console, based on Miyoo's stock system.

First of all, we would like to THANK Miyoo for providing us with development units, as well as NinohFox for always being there to lend a hand, and Thundertwin for testing.

**CLEAN INSTALLATION**

- Copy the contents of the "Better Than Nothing (BTN) beta version 1.7z" file (essentially, unzip everything) onto a Micro-SD card formatted to FAT32 with a 32 allocation size.
- Once everything is unzipped, insert the card into the console and turn it on. It will start with a screen indicating that it is preparing the first boot (creating the cache file), then a screen with the image name will appear, followed by the system's main menu. After this, you need to turn off the console, add the games to the card, and you're set.

**INSTALLATION FROM A PREVIOUS VERSION**

- If you have saved games, back up the "saves" and "states" folders located in the "\Retroarch\.retroarch\" directory on the Micro-SD card.
- Delete all contents of the Micro-SD card except for the "Roms" folder to keep the same games.
- Copy the contents of the "Better Than Nothing (BTN) beta version 1.7z" file (essentially, unzip everything).
- Restore the backup of the saved games.
- Insert the card into the console and turn it on.
- It will start with a screen indicating that it is preparing the first boot (creating the cache file), then a screen with the image name will appear, followed by the system's main menu.

The BIOS files aren't included, so you need to add this and the ROMs with their corresponding scrapes. This image is designed to work perfectly with the BOM (Brothers of Metal) ROM packs, but you can add whichever ROMs you like. If you are not using the BOM packs, please note that the scrapes should be placed in a folder named "Imgs" inside each system folder within the "ROMS" directory. The scrape should have the same name as the ROM and be in "png" format. It is recommended that scrapes have a maximum resolution of 320x240 to avoid performance issues.

---

**INCLUDED SYSTEMS:**

AMIGA, AMSTRAD CPC, ARCADE, ATARI2600, ATARI5200, ATARI7800, COMMODORE64, CPS1, CPS2, CPS3, DREAMCAST, DOOM, MS-DOS, FBNEO, NES, FAMILY DISK SYSTEM, GAME BOY, GAME BOY COLOR, GAME BOY ADVANCE, GAME GEAR, GAME & WATCH, LYNX, MEGADRIVE, MASTER SYSTEM, MSU-1, MSUMD, MSX, NINTENDO64, NEOGEO, NEOGEOCD, NEO GEO POCKET, ODYSSEY2, PCENGINE, PCENGINECD, PICO-8, POKEMON MINI, PSP, PSX, QUAKE, SCUMMVM, SEGA 32X, SEGA CD, SG-1000, SUPER NINTENDO, SUPER GAME BOY, SUPERVISION, TIC-80, VIRTUAL BOY, WOLF3D, WONDERSWAN, X68000, and ZX SPECTRUM.

---

**1. CONTROLS IN THE MIYOO OPERATING SYSTEM:**

* In the main menu:

- DPAD: Navigate through menus.
- HOME: Shows a menu to search ROMs by name and refresh ROM lists.
- A/Y: OK.
- B: Back.
- SELECT: Search ROMs by name.
- L2 and R2: Fast scrolling.
- START + L1/R1: Adjust brightness.
- SELECT + L1/R1: Adjust volume.

* In a system's game list:

- DPAD: Navigate through the list.
- HOME: Show menu to open the game, add it to favorites, or delete it.
- X: Change core to use with the game (does not save the selection).
- A/Y: OK.
- B: Back.
- SELECT: Search ROMs by name.
- L2 and R2: Fast scrolling.
- START + L1/R1: Adjust brightness.
- SELECT + L1/R1: Adjust volume.

**2. CONTROLS IN RETROARCH (HOTKEYS):**

- HOME + A: Pause.
- HOME + B: Fast Forward (not recommended for PS1, may cause performance issues).
- HOME + Y: Show/hide FPS.
- HOME + X: Miyoo menu (from here you can save and load states).
- HOME + L1: Load Savestate.
- HOME + R1: Save Savestate.
- HOME + L2: Previous Savestate slot.
- HOME + R2: Next Savestate slot.
- HOME + START: Exit the game (same as exiting from the Miyoo menu).
- START + L1/R1: Adjust brightness.
- SELECT + L1/R1: Adjust volume.

**EXTRA SHORTCUTS FOR CERTAIN SYSTEMS:**

- GAME BOY: Use R2 and L2 to switch color palettes and R1 to speed up the game.
- GAME BOY COLOR: Use R1 to speed up the game.
- GAME BOY ADVANCE: Use R2 to speed up the game.
- ARCADE: Use R2 to open the configuration menu, where you can change switches or activate cheats.
- NEO GEO AND NEOGEO CD: A+B+C: Press this on the Universal Bios screen to change region, BIOS configuration, and other options. Select + Start or Start + A + B + C: Access the in-game menu to activate cheats. Hold Start for a few seconds: Access the game's switch menu (Neo Geo only).
To load a save state when starting a game, do so after the Unibios loading screen to avoid corruption. If corruption occurs, you can reload the state after exiting and re-entering the game.
- CAPCOM (CPS1, CPS2, AND CPS3): BOM's switch files have been used. Although FBA cannot change them, it can read them, so games like Alien vs Predator and the first D&D are in Spanish, while games like SFA 3 have proper difficulty and one-credit settings.

---

**IMPORTANT INFORMATION:**

- The system is configured with the default CPU speed, but an increase has been applied to more demanding cores to improve performance.
- For systems like DC, PSP, N64, and NDS, it is not recommended to play for long periods as the console heats up, and these systems are not really meant to be played on this console.
- Most BOM remappings have been incorporated, such as weak punches on triggers for six-button games and modifications for red blood in Metal Slug. However, there may still be issues as this is a different system with its own peculiarities.
- Computers could not be fine-tuned because BOM's inherited mappings (from other colleagues like Michel, Manic Miner, or Angelete) do not work the same on the A30. Adapting and correcting them would be a colossal task given the time we can dedicate, so interested parties will have to manage them themselves.
- Remember that you can switch cores when loading a game. If a game doesn't perform well with one core, try another. The Miyoo system does not allow saving core assignments (something we cannot remedy).
By default, Arcade loads games with the "mame2003_plus_libretro" core, but some games may need others. For demanding games, use the "km_mame2003_xtreme_libretro" core, and for others, "fbneo_libretro" may be necessary. This requires experimentation.
- After exiting sleep mode, both background music and screen brightness do not return to default values (this is not an image fault but a console issue).
- If the analog control has "drift," it is recommended to calibrate it in the system settings until it works correctly.

---

**CHANGELOG (UPDATE 1) - 05/28/2024**

- OS updated with the latest Miyoo files.
- Default screen values are maintained.
- Updated "ATC SMB" theme and replaced the font for proper display of Asian languages.
- Added the factory Asian languages.
- Updated the "gpsp_plus" core in RetroArch (with vibration support).
- Removed BIOS loading in GBA cores.
- Added the "GMU" app (Music Player) in Apps.
- Customized icons in the "Apps" tab.
- Added the "FoundationV2" theme (default in the latest Miyoo update).
- Updated the "Commander" app.
- Enabled analog control in Atari Lynx and Pico-8.
- Applied the "grid3x" filter in Pico-8 cores.
- Added the updated "pcsx_rearmed_a30_libretro.so" core.
- Added the updated "fbneo_a30_libretro.so" core.
- Created the "FBNEO" system with its corresponding ROM folder.
- Added the "fbneo_a30_libretro.so" core as an alternative core in "ARCADE."
- Added the "swanstation_libretro.so" core for PSX.
- Configured the console's CPU performance in all systems to save as much battery as possible.

---

That's all. If you have any questions, please write to us. This image is meant to provide you with the best possible experience with the stock software until we can adapt Koriki.

Now, it's time to... PLAY AND ENJOY!

Rparadise team