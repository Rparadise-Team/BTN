#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
cpuclock performance 1 816 384
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/ra32.miyoo -v -L $RA_DIR/.retroarch/cores/fbneo_libretro.so "$1"
