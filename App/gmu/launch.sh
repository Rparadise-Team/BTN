#!/bin/sh
echo $0 $*
cd $(dirname "$0")

cpuclock performance 2 1200 300

HOME=/mnt/SDCARD/App/gmu
export LD_LIBRARY_PATH=./lib:$LD_LIBRARY_PATH

SDL_NOMOUSE=1 SDL_VIDEODRIVER=a30  ./gmu.bin -c gmu.miyoo.conf &> ./log.txt
sync

