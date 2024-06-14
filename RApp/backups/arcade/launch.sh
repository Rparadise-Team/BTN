#!/bin/sh
#author: FISH 22.01.29
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`
coredir="/mnt/SDCARD/RetroArch/.retroarch/cores"
filename=${1##*/}
cd /mnt/SDCARD/RetroArch/
core="fbalpha2012_libretro.so"
test="y"
touch $progdir/fbnroms.txt
touch $progdir/mameroms.txt
#find in cache file
if grep ",$filename" $progdir/fbnroms.txt > /dev/null
then
	core="fbneo_libretro.so"
	test=""
elif grep ",$filename" $progdir/mameroms.txt > /dev/null
then
	core="mame2003_xtreme_libretro.so"
	test=""
fi
HOME=/mnt/SDCARD/RetroArch/ $progdir/../../RetroArch/retroarch -v -L $coredir/$core "$1" 2>$progdir/runlog
if grep "\[ERROR\] \[CONTENT LOAD\]" $progdir/runlog > /dev/null || grep "Segmentation fault" $progdir/runlog > /dev/null
then
#run fail
	if [ $test == "y" ]
	then
		#try mame
		core="mame2003_xtreme_libretro.so"
		HOME=/mnt/SDCARD/RetroArch/ $progdir/../../RetroArch/retroarch -v -L $coredir/$core "$1" 2>$progdir/runlog
		if grep "\[ERROR\] \[CONTENT LOAD\]" $progdir/runlog > /dev/null || grep "Segmentation fault" $progdir/runlog > /dev/null
		then
			#try fbn
			core="fbneo_libretro.so"
			HOME=/mnt/SDCARD/RetroArch/ $progdir/../../RetroArch/retroarch -v -L $coredir/$core "$1" 2>$progdir/runlog
			if grep "This romset is known but yours doesn" $progdir/runlog > /dev/null
			then
				#fbn fail
				:
			else
				#add to fba cache file
				echo ",$filename" >> $progdir/fbnroms.txt
			fi
		else
			#add to mame cache file
			echo ",$filename" >> $progdir/mameroms.txt
		fi
	fi
fi