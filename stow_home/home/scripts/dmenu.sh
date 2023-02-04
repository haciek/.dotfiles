#!/usr/bin/env bash

declare -A scripts
scripts=(
    ["Bookmarks"]=d-bookmarks.sh
    ["Manuals"]=d-man.sh
    ["Mount"]=d-mount.sh
    ["Unmount"]=d-umount.sh
    ["Torrent"]=d-torrent.sh
    ["Networks"]=d-networks.sh
    ["Quickstart"]=d-quickstart.sh
    )

selected=$(echo "${!scripts[@]}" | sed 's/\s/\n/g' - | dmenu)
eval "${scripts["$selected"]}"

# list=("Bookmarks" "Quickstart" "Torrent" "Mount" "Unmount" "Manuals" "Exit")
# opt=$(echo "${list[@]}" | sed 's/\s/\n/g' | dmenu -p "Select: ")
# [ -z "$opt" ] && exit 1

# case "$opt" in
#     Bookmarks)   d-bookmarks.sh  ;;
#     Manuals)     d-man.sh        ;;
#     Mount)       d-mount.sh      ;;
#     Unmount)     d-umount.sh     ;;
#     Torrent)     d-torrent.sh    ;;
#     Networks)    d-networks.sh   ;;
#     Quickstart)  d-quickstart.sh ;;
#     Exit) exit 0 ;;
# esac

