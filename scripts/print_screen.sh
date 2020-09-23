#!/bin/bash
sleep 0.2 && scrot %Y%m%d-%H%M%S.png -e 'mv $f ~/shots'
