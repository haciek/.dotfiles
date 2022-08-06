
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

# ~ < unused > ~
# alias scr="$HOME/doc/scripts"
# alias notes="$HOME/doc/notes"
# alias files="$HOME/doc/files"
# alias latex="$HOME/doc/latex"
# alias code="$HOME/doc/code"
# alias pdfs="$HOME/doc/pdfs"
# alias pics="$HOME/doc/pics"
# alias vids="$HOME/doc/vids"
# alias dl="$HOME/doc/dl"
# alias vf='vifm'
# alias R="sudo ranger"
# alias alpine="alpine -p ~/.config/alpine/.pinerc"
