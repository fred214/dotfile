#!/bin/bash

xrandr --output DP2 --mode 2560x1440 --output LVDS1 --off
picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b

~/.scripts/wallpaper-change.sh


