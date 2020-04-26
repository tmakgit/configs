#!/bin/bash
# A script to disable and enable the touchpad on my laptop.

state=`xinput list-props "DELL07EC:00 06CB:7E92 Touchpad" | grep "Device Enabled" | cut -f 3`

if [ $state -eq 1 ]; then
	exec `xinput set-prop "DELL07EC:00 06CB:7E92 Touchpad" "Device Enabled" 0`
	exit
fi

if [ $state -eq 0 ]; then
	exec `xinput set-prop "DELL07EC:00 06CB:7E92 Touchpad" "Device Enabled" 1`
	exit
fi
