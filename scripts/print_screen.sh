#!/bin/bash
sleep 0.2 && scrot -u %Y%m%d-%H%M%S.png -e 'mv $f ~/shots'
notify-send "scrot: Focused window screenshot taken."
