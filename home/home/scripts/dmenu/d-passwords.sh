#!/bin/bash

# actions=('get' 'add' 'remove' 'sync')

labels=$(rbw list)
# master_key=$(dmenu -p "Master Key:")
label=$(echo "${labels[@]}" | dmenu )


readarray -t pass_info < <(rbw get "$label" --full )
declare -p pass_info

pass="${pass_info[0]}"
url="${pass_info[2]}"
echo "$pass" | xclip -i -rmlastnl -selection "clipboard"

"$BROWSER" "$url"

notify-send "Copied a '$label' password to the clipboard!"
