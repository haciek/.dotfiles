#!/bin/sh

update=$(checkupdates | wc -l)
# aur=$(checkupdates-aur | wc -l)
echo " 🔄 $update "
# case "$BUTTON" in
#     1) [ ! "$update" -eq 0 -o "$aur" -eq 0 ] && \
# notify-send "Package update(s):
# $(checkupdates | awk '{ print $1 }')
# $(aur | awk '{ print $1 }')" ;;
#     3) "$TERMINAL" -e "$EDITOR" "$0" ;;
# esac
