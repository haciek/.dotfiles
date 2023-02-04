#!/bin/sh

remaps.sh &
wallpaper.sh &
flameshot &
# firefox &

dunst &
picom -b &
sxhkd &


exec awesome

