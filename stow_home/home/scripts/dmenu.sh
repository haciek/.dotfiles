#!/usr/bin/env bash

show_manuals(){
    sel=$(man -k . | dmenu -l 20 -p "Select manual: ")
    [ -z "$sel" ] && exit 0
    echo "$sel" | awk '{print $1}' | xargs -r man -Tpdf | zathura -
}

mount_devices(){
    part=$(lsblk -lp | grep "part $" | awk '{print $1, "(" $4 ")"}')
    [ -z "$part" ] && exit 1

    select=$(echo "$part" | dmenu -p "Select drive:"| awk '{print $1}')
    [ -z "$select" ] && exit 1

    passwd=$(dmenu -p "Input password: " )
    echo "$passwd" | sudo -S mount "$select" && exit 0
    dirs=$(find /mnt -type d -maxdepth 1 2>/dev/null)
    mntpt=$(echo "$dirs" | dmenu -p "Mount to:")
    [ -z "$mntpt" ] && exit 1

    [ ! -d "$mntpt" ] \
        && makedir=$(echo "Make\nAbort" | dmenu -p "$mntpt doesn't exist.") && \
        [ "$makedir" = "Make" ] && sudo mkdir -p "$mntpt"

    sudo -S mount "$select" "$mntpt" && (pgrep -x dunst && notify-send "$select mounted to $mntpt")
}

umount(){
    exclude="\(/boot\|/home\|/\)$"
    drives=$(lsblk -lp | grep "part /" | grep -v "$exclude" | awk '{print $1, "(" $4 ")" on $7 }')
    [ -z "$drives" ] && exit
    select=$(echo "$drives" | dmenu -p "Unmount drive:" | awk '{print $1}')
    [ -z "$select" ] && exit
    sh -c sudo umount "$select" && pgrep -x dunst && notify-send "$select unmounted"
}

list=("Manuals" "Mount" "Unmount" "Unicode" "Exit")
opt=$(echo "${list[@]}" | sed 's/\s/\n/g' | dmenu -p "Select option: ")
[ -z "$opt" ] && exit 1

case "$opt" in
    Manuals) show_manual ;;
    Mount) mount_devices ;;
    Unmount) umnt ;;
    Unicode) uni ;;
    Exit) exit 0 ;;
esac

