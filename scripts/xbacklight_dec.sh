#!/bin/bash
xbacklight -dec 10
notify-send Brightness: `xbacklight | cut -d "." -f 1`
