#!/bin/sh

# case "$BUTTON" in
#     1) pulsemixer --toggle-mute ;;
#     2) [ "$(pgrep -x pulsemixer)" ] && pkill "pulsemixer"  || setsid st -e "pulsemixer" ;;
#     3) "$TERMINAL" -e "$EDITOR" "$0" ;;
# esac

vol=$(pulsemixer --get-volume | awk '{print $1}')
[ "$vol" -lt 50 ] && icon="🔈"  ||  icon="🔊"
[ "$(pulsemixer --get-mute)" -eq 1 ] && icon="🔇"
echo " $icon $vol% ]"
