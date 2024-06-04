#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
RA_DIR=/mnt/SDCARD/RetroArch
./cpufreq.sh
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/retroarch -v -L $RA_DIR/.retroarch/cores/mgba_libretro.so "$1"