#!/bin/sh

case "$BUTTON" in
    1) [ "$(pgrep -x calcurse)" ] && pkill -x calcurse || "$TERMINAL" -e "calcurse" ;;
    3) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

dte=$( date +' %A, %B %d | %R ')
echo "[$dte]"
