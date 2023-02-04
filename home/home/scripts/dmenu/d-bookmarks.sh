#!/bin/bash

file="$HOME/.bookmarks"
opt=( "Open-Bookmark" "Add-Bookmark" "Delete-Bookmark" )
sel=$(echo "${opt[@]}" | sed "s/\s/\n/g" - | dmenu -p "Select:")

open() {
    url=$(cat "$file" | dmenu -p "Bookmark:" )
    [ "$url" == "" ] && exit 1
    eval "$BROWSER" "$url";
}
add() {
    url_new=$(dmenu  -p "Enter URL: ")
    [ "$url_new" == "" ] && exit 1
    echo "$url_new" | sed "s/\(http.*:\/\/\|.*www\.\)//" - >> "$file"
    notify-send "Bookmark added: $url_new"
}
del() {
    file_tmp="$HOME/.bookmarks_tmp"
    url=$(cat "$file" | dmenu -p "Bookmark:")
    sed -i "s/$url//" "$file" && notify-send "Bookmark delted: $url"
    for line in $(cat "$file")
    do
        [ "$line" == "" ] && continue
        echo "$line" >> "$file_tmp"
    done
    eval mv -f "$file_tmp" "$file"

}
case "$sel" in
    ${opt[0]}) open ;;
    ${opt[1]}) add ;;
    ${opt[2]}) del ;;

esac
