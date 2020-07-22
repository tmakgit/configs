#!/bin/bash
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus
exec dunst -centering horizontal &
exec kensington.sh &
xsetroot -solid black &
#exec feh --bg-fill /home/tmak/git/configs/walls/rhombus-square-bg8.png &
xset s noblank s 0 -dpms -b &
xrdb ~/.Xresources &
exec slstatus &
exec dwmstart.sh
