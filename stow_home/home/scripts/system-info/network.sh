#!/bin/sh

file=$(echo "$0" | sed "s/\(.*\/\).*/\1.network/")
[ ! -a "$file" ] && touch "$file"
# [ "$(cat /sys/class/net/e*/operstate)" = "down" ] && \
status="🌐"

down=$(( ($(cat /sys/class/net/*/statistics/rx_bytes | paste -sd "+")) / 1024 ))
up=$(( ($(cat /sys/class/net/*/statistics/tx_bytes | paste -sd "+")) / 1024 ))
net_down=$(( down - $(awk '(NR==1){print $1}' "$file" ) ))
net_up=$(( up - $(awk '(NR==1){print $2}' "$file" ) ))

[ $net_down -gt 1024 ] && net_down=$((net_down / 1024)) && unitD="Mib" || unitD="Kib"
[ $net_up -gt 1024 ] && net_up=$((net_up / 1024)) && unitU="Mib" || unitU="Kib"

echo " $status ᐁ $net_down $unitD ᐃ $net_up $unitU "
echo "$down $up" > "$file"
