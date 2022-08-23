#!/bin/sh

# case "$BUTTON" in
#     3) "$TERMINAL" -e "$EDITOR" "$0" ;;
# esac

wttr=$(curl -s wttr.in/\?format="%c+%t" 2>&1 | sed 's/\ //' )
[ -n "$wttr" ] && echo " $wttr "

