#!/usr/bin/env bash

programs=('firefox' 'discord' 'spotify' 'steam-native' 'librewolf')
selected=$(echo "${programs[@]}" | sed 's/\s/\n/g' - | dmenu -p "Quick start:")

eval "$selected" & disown

# if [[ $(echo "${programs[@]}" | grep -q "$selected" -) ]]; then
# 	eval "$selected" & disown
# fi
