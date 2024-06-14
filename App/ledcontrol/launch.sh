#!/bin/sh
ON=/tmp/ledon
OFF=/tmp/ledoff

if [ -f $ON ]; then
	rm $ON
	echo 0 > /sys/devices/platform/sunxi-led/leds/led1/brightness
	touch $OFF
	exit
fi

if [ -f $OFF ]; then
	rm $OFF
	echo 255 > /sys/devices/platform/sunxi-led/leds/led1/brightness
	touch $ON
	exit
fi

if [ ! -f $ON ]; then
	echo 0 > /sys/devices/platform/sunxi-led/leds/led1/brightness
	touch $OFF
	exit
fi