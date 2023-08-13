#!/bin/bash
# magnet:?xt=urn:btih:333B3388F328D0421EA9C9B7CA8AC3CB9337C684&dn=Berserk%20Manga%201-39%20(under%20100mb%20each)&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A6969%2Fannounce&tr=udp%3A%2F%2F9.rarbg.to%3A2710%2Fannounce&tr=udp%3A%2F%2F9.rarbg.me%3A2780%2Fannounce&tr=udp%3A%2F%2F9.rarbg.to%3A2730%2Fannounce&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=http%3A%2F%2Fp4p.arenabg.com%3A1337%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce&tr=udp%3A%2F%2Ftracker.tiny-vps.com%3A6969%2Fannounce&tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce
link=$(xclip -o | dmenu -p "Confirm")
# dirs=$( find "$HOME" -type d -maxdepth 1 2>/dev/null )
dirs=$(ls -1 ~)
# dirs=${dirs//$HOME/\~}
dir=$( echo "${dirs}" | dmenu -p "Directory: " )
path="$HOME/${dir}"

cmd="aria2c --seed-time=0 -d $path \'$link\'"
eval "$TERMINAL" -e "$cmd"
