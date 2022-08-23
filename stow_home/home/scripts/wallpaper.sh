#!/bin/sh
wall="nature"
while true
do
    # nitrogen "$HOME/doc/pics/wallpapers/$wall" --set-auto --random
    nitrogen "$HOME/pictures/$wall" --set-zoom-fill --random
    #nitrogen "$HOME/doc/pics/wallpapers/hollow_knight/hollow-knight.jpg" --set-auto --random #--head=0

    sleep 100
done
