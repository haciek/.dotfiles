# echo 'export ZDOTDIR="$HOME"/.config/zsh' > /etc/zsh/zshenv

typeset -U PATH path

export PATH=$PATH:$HOME/scripts/:$HOME/scripts/status/:$HOME/.local/bin:/usr/bin/python3

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH="$ZDOTDIR/.zshrc"
export HISTFILE="$ZDOTDIR/.zsh_history"
export LESSHISTFILE="-"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

export GTK_THEME='Adwaita:dark'
export LANG='en_US.UTF-8'
export EDITOR='nvim'
export BROWSER='qutebrowser'
export TERMINAL='alacritty'
export READER='zathura'
export PLAYER='mpv'

export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc/"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc/"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export LS_COLORS
