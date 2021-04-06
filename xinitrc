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
exec dunst &
exec kensington.sh &
xsetroot -solid "#000000" &
#xsetroot -solid "#2aa198" &
xset s noblank s 0 -dpms -b &
exec synergys &
exec slstatus &
exec dwmstart.sh
