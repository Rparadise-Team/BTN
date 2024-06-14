#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
cpuclock performance 4 1200 384
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/ra32.miyoo -v -L $RA_DIR/.retroarch/cores/libn64.so "$1"
