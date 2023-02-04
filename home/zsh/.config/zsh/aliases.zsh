
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias ll="ls -al"

alias mv="mv -v"
alias cp="cp -v"
alias rm="rm -v"

alias v='nvim'
alias V="sudoedit"
alias f='xdg-open $(fzf) > /dev/null 2>&1'
alias r="ranger"
alias news="newsboat -r"
alias pacman="sudo pacman"
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
alias aria2c="aria2c --seed-time=0"
alias camera="mpv /dev/video0 --profile=low-latency --untimed"

alias suspend="systemctl suspend"
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"

