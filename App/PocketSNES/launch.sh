#!/bin/sh
cpuclock performance 1 1200 384
echo $0 $*
export LD_LIBRARY_PATH=/mnt/SDCARD/miyoo/lib/sdl2:$LD_LIBRARY_PATH

cd /mnt/SDCARD/App/PocketSNES
./PocketSNES
