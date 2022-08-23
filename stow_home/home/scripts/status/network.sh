#!/bin/sh

# case "$BUTTON" in
#     3) "$TERMINAL" -e "$EDITOR" "$0" ;;
# esac
file=$(echo "$0" | sed "s/\(.*\/\).*/\1.net_bw/")
[ "$(cat /sys/class/net/eth0/operstate)" = "down" ] && \
[ "$(cat /sys/class/net/eth1/operstate)" = "down" ] && status="🚫" || status="🌐"

down=$(( ($(cat /sys/class/net/*/statistics/rx_bytes | paste -sd "+")) / 1024 ))
up=$(( ($(cat /sys/class/net/*/statistics/tx_bytes | paste -sd "+")) / 1024 ))
net_down=$(( down - $(awk '(NR==1){print $1}' "$file" ) ))
net_up=$(( up - $(awk '(NR==1){print $2}' "$file" ) ))

[ $net_down -gt 1024 ] && net_down=$((net_down / 1024)) && unitD="Mib" || unitD="Kib"
[ $net_up -gt 1024 ] && net_up=$((net_up / 1024)) && unitU="Mib" || unitU="Kib"

echo " $status ᐁ $net_down $unitD ᐃ $net_up $unitU "
echo "$down $up" > "$file"
