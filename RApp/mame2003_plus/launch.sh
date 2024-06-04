#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`
./cpufreq.sh
swapon /mnt/SDCARD/App/swap/swap.img
cd /mnt/SDCARD/RetroArch/
HOME=/mnt/SDCARD/RetroArch/ $progdir/../../RetroArch/retroarch -v -L /mnt/SDCARD/RetroArch/.retroarch/cores/mame2003_xtreme_libretro.so "$1"
swapoff /mnt/SDCARD/App/swap/swap.img