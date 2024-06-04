#!/bin/sh
cpuclock performance 2 1344 384
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emu/DC
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/ra32.miyoo -v -L $EMU_DIR/flycast_libretro.so "$*"
