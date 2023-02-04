#!/bin/sh

# notify-send "Memory usage:
# $(ps axch -o cmd:16,%mem --sort=-%mem | head -n 10)" ;;

ram=$(free -h | awk '/^Mem:/ { print $3 }') #'"/" $2}')
echo " 💾 $ram"

