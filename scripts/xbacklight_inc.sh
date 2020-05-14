#!/bin/bash
xbacklight -inc 10
notify-send Brightness: `xbacklight | cut -d "." -f 1`
