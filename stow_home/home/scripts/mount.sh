#!/usr/bin/env bash

part=$(lsblk -lp | grep "part $" | awk '{print $1, "(" $4 ")"}')
[ -z "$part" ] && exit 1

select=$(echo "$part" | dmenu -p "Select drive: "| awk '{print $1}')
[ -z "$select" ] && exit 1

passwd=$(dmenu -p "Password: " )
echo "$passwd" | sudo -S mount "$select" && exit 0

mnt_dirs=$(find /mnt -type d -maxdepth 1 2>/dev/null)
mnt_pt=$(echo "$mnt_dirs" | dmenu -p "Mount to:")
[ -z "$mnt_pt" ] && exit 1

[ ! -d "$mnt_pt" ] && make_dir=$(printf "Make\nAbort" | dmenu -p "$mnt_pt doesn't exist.") && \
    [ "$make_dir" = "Make" ] && echo "$passwd" | sudo -S mkdir -p "$mnt_pt"

echo "$passwd" | sudo -S mount "$select" "$mnt_pt" && (pgrep -x dunst && notify-send "$select mounted to $mnt_pt")
