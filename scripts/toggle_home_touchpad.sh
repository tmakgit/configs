#!/bin/bash
# A script to disable and enable the touchpad on my laptop.

state=`xinput list-props "AlpsPS/2 ALPS DualPoint TouchPad" | grep "Device Enabled" | cut -f 3`

if [ $state -eq 1 ]; then
	exec `xinput set-prop "AlpsPS/2 ALPS DualPoint TouchPad" "Device Enabled" 0`
	exit
fi

if [ $state -eq 0 ]; then
	exec `xinput set-prop "AlpsPS/2 ALPS DualPoint TouchPad" "Device Enabled" 1`
	exit
fi
