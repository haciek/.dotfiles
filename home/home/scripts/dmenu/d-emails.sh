#!/usr/bin/env bash

declare -A emails
emails=(
    ["PlusEdukacja"]="poznan@plusedukacja.pl"
    ["maciej.habasinski"]="maciej.habasinski@gmail.com"
    ["maciekhab"]="maciekhab@gmail.com"
    )

select=$(echo "${!emails[@]}" | sed 's/\s/\n/g' - | dmenu)
email="${emails[$select]}"
echo "$email" | xclip -i -rmlastnl -selection "clipboard"
notify-send "Copied to a clipboard: $email"

