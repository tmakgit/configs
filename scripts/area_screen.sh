#!/bin/bash
sleep 0.2 && scrot -s %Y%m%d-%H%M%S.png -e 'mv $f ~/shots'
notify-send "scrot: Selection screenshot taken."
