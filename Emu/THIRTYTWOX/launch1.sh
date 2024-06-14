#!/bin/sh
cpuclock performance 1 1000 384
echo $0 $*
export LD_LIBRARY_PATH=/mnt/SDCARD/miyoo/lib/sdl2:$LD_LIBRARY_PATH

cd /mnt/SDCARD/App/Picodrive

if [ "${1##*.}" = "7z" ]; then
    temp_dir=/tmp/rom
    mkdir $temp_dir
    7zr x "$1" -o"$temp_dir"
    file_to_run=$(find "$temp_dir" -type f \( -name "*.bin" -o -name "*.gen" -o -name "*.smd" -o -name "*.md" -o -name "*.32x" -o -name "*.cue" -o -name "*.iso" -o -name "*.sms" -o -name "*.68k" -o -name "*.chd" -o -name "*.gg" -o -name "*.sg" -o -name "*.sc" -o -name "*.pco" \) | head -n 1)
    if [ -n "$file_to_run" ]; then
        ./PicoDrive "$file_to_run"
    else
        echo "Not picodrive game found."
    fi
    rm -r "$temp_dir"
else
./PicoDrive "$1"
fi