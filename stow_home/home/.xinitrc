#!/bin/sh

sxhkd &
dunst &
picom -b &

flameshot &
firefox &
wallpaper.sh &
remaps.sh &

exec awesome

