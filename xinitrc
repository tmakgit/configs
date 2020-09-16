#!/bin/bash

# from /etc/X11/xinit/xinitrc

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# end of snippet from /etc/

export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus
exec dunst -centering horizontal &
exec kensington.sh &
xsetroot -solid black &
#exec feh --bg-fill /home/tmak/git/configs/walls/rhombus-square-bg8.png &
xset s noblank s 0 -dpms -b &
xrdb ~/.Xresources &
exec slstatus &
exec dwmstart.sh
