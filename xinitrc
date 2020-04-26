#!/bin/bash
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus
exec dunst &
exec kensington.sh &
#xsetroot -solid black &
feh --bg-fill ~/git/configs/walls/night_garden.jpg
xset s noblank s 0 -dpms -b &
xrdb ~/.Xresources &
exec slstatus &
exec dwmstart.sh
