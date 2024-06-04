#!/bin/sh
SETTINGS_FILE="/config/system.json"
SWAPFILE="/mnt/SDCARD/cachefile"
SDCARD_PATH="/mnt/SDCARD"

export SYSTEM_PATH="${SDCARD_PATH}/miyoo"

export PATH="$SYSTEM_PATH/app:${PATH}"
export LD_LIBRARY_PATH="$SYSTEM_PATH/lib:${LD_LIBRARY_PATH}"

export HOME="${SDCARD_PATH}"

mount -o bind "/mnt/SDCARD/.tmp_update/etc/profile" /etc/profile

mount -o bind "/mnt/SDCARD/.tmp_update/usb_storage/usb_icon_80.png" /usr/miyoo/apps/usb_storage/usb_icon_80.png

killprocess(){
   pid=`ps | grep $1 | grep -v grep | cut -d' ' -f3`
   kill -9 $pid
}

runifnecessary(){
    a=`ps | grep $1 | grep -v grep`
    if [ "$a" == "" ] ; then
        $2 &
    fi
}

#init lcd
lcd_init 1

show "${SDCARD_PATH}/.tmp_update/bootscreen.png" &

#copy config
if [ ! -f "${SDCARD_PATH}"/copy_config ]; then
cp "${SDCARD_PATH}/.tmp_update/system.json" "$SETTINGS_FILE"
touch "${SDCARD_PATH}"/copy_config
sync
sleep 5
fi

# check swap size
if [ -f "${SWAPFILE}" ]; then
    SWAPSIZE=$(du -k "${SWAPFILE}" | cut -f1)

    MINSIZE=$((128 * 1024))

    if [ "$SWAPSIZE" -lt "$MINSIZE" ]; then
        swapoff "${SWAPFILE}"
        rm "${SWAPFILE}"
    fi
fi

# Enable swap
if [ ! -f "${SWAPFILE}" ]; then
	dd if=/dev/zero of="${SWAPFILE}" bs=1M count=128
	mkswap "${SWAPFILE}"
	sync
fi

killall -9 show

show "${SDCARD_PATH}/.tmp_update/boot.png" &

swapon -p 40 "${SWAPFILE}"

#detected wifi config
wifi=$(grep '"wifi"' /config/system.json | awk -F ':' '{print $2}' | tr -d ' ,')

if [ "$wifi" -eq 0 ]; then
touch /tmp/wifioff
killall -9 wpa_supplicant
killall -9 udhcpc
rfkill
else
touch /tmp/wifion
fi

#Kill main script
killall -9 main

sleep 5
killall -9 show

#export SDL_VIDEODRIVER=a30
#export SDL_JOYSTICKDRIVER=a30

while [ 1 ]; do
	#export LD_LIBRARY_PATH=/lib:/usr/lib:${SYSTEM_PATH}/lib 
	
	runifnecessary "keymon" ${SYSTEM_PATH}/app/keymon
	
	cd ${SYSTEM_PATH}/app/
	./MainUI
      
	if [ -f /tmp/.cmdenc ] ; then                                                                                   
	/root/gameloader                                                                                             
	elif [ -f /tmp/cmd_to_run.sh ] ; then                                                                           
	chmod a+x /tmp/cmd_to_run.sh                                                                                 
	/tmp/cmd_to_run.sh                                                                                           
	rm /tmp/cmd_to_run.sh                                                                                        
	fi            

done
