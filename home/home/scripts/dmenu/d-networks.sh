#!/usr/bin/env bash

declare -A networks
declare -A options
declare -A network_names


path=$(realpath "$0")
dir=$(realdir "$path")
file="${dir/files/networks}"

ssids=$(nmcli device wifi list 2> /dev/null |\
    awk '{print $2}' |\
    sed 's/^BSSID//' &)
ssid=""
passwd=""

select_saved ()
{
    while read -r name ssid pass
    do
        network_names["$name"]="$ssid"
        networks["$ssid"]="$pass"
    done < "$file"

    name=$(echo "${!network_names[@]}" | sed 's/\s/\n/g' - | dmenu)

    ssid="${network_names["$name"]}"
    passwd="${networks["$ssid"]}"
};

select_net ()
{
    ssid=$(echo "${ssids[@]}" | sed 's/\s/\n/g' | dmenu)
    [ "${ssid}" == '' ] && return

    passwd=$(dmenu -p "Password for $ssid")
};

options=(
    ["Saved"]=select_saved
    ["Search"]=select_net
    )

opt=$(echo "${!options[@]}" | sed 's/\s/\n/g' - | dmenu)

eval "${options["$opt"]}"

[ "${ssid}" == '' ] \
    && notify-send "No network selected!" \
    && exit

notify-send "Connecting..."
message="Connected to '$ssid'"

nmcli device wifi connect "$ssid" password "$passwd" \
    || message="Failed to connect to '$ssid'";
notify-send "$message"

