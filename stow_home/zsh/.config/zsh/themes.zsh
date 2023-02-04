#!/bin/sh

case "$1" in
  1) # tokyonight
  COLOR_USER="%F{red}"
  COLOR_BRACKETS="%F{magenta}"
  COLOR_PATH="%F{yellow}"
  LS_COLORS="fi=0;35:di=1;31:ex=0;33"
  ;;
  2) # nature
  COLOR_USER="%F{cyan}"
  COLOR_BRACKETS="%F{green}"
  COLOR_PATH="%F{yellow}"
  LS_COLORS="fi=0;36:di=1;32:ex=4;33"
  ;;
  3) # sunrise
  COLOR_USER="%F{yellow}"
  COLOR_BRACKETS="%F{white}"
  COLOR_PATH="%F{yellow}"
  LS_COLORS="fi=0;39:di=1;33:ex=4;31"
  ;;
esac

USER_PROMPT="$COLOR_USER%n$COLOR_BRACKETS@$COLOR_USER%m"
PS1="$COLOR_BRACKETS<$USER_PROMPT $COLOR_PATH%~$COLOR_BRACKETS>$COLOR_PATH%B$%b%f "
