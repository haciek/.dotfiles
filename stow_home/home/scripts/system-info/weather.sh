#!/bin/sh

wttr=$(curl -s wttr.in/\?format="%c+%t" 2>&1 | sed 's/\ //' 2&>1 /dev/null )
[ -n "$wttr" ] && echo " $wttr "

