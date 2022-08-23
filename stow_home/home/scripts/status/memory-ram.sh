#!/bin/sh

# case "$BUTTON" in
#     1) notify-send "Memory usage:
# $(ps axch -o cmd:16,%mem --sort=-%mem | head -n 10)" ;;
#     3) "$TERMINAL" -e "$EDITOR" "$0" ;;
# esac

ram=$(free -h | awk '/^Mem:/ { print $3 }') #'"/" $2}')
echo " 💾 $ram"

