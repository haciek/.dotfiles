#!/usr/bin/env bash

options=("poweroff" "restart" "suspend")
selected=$(echo "${options[@]}" | sed "s/\s/\n/g" - | dmenu -p "Select:")
eval "$selected"

