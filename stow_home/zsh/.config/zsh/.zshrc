#               _
#     ____ ___ | |__
#    |_  // __|| '_ \
#     / / \__ \| | | |
#    /___||___/|_| |_|


autoload -U colors && colors
autoload -U compinit
zstyle ":completion:*" menu select

source "$ZDOTDIR/antigen.zsh"
	antigen bundle zsh-users/zsh-syntax-highlighting
	antigen bundle unixorn/autoupdate-antigen.zshplugin
	antigen bundle zsh-users/zsh-autosuggestions
	antigen bundle zsh-users/zsh-completions
	antigen bundle jeffreytse/zsh-vi-mode
	antigen bundle hlissner/zsh-autopair
	antigen bundle zdharma/fast-syntax-highlighting
	#antigen bundle Aloxaf/fzf-tab
antigen apply

source "$XDG_CONFIG_HOME/zsh/aliases.zsh"

setopt autocd
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="false"
autosuggestions="true"
HISTSIZE=69420
SAVEHIST=69420

# theme: tokyonight
# PS1="%F{red}%B<%b%F{magenta}%n%F{red}%\@%F{magenta}%m %F{red}%~%F{red}%B>%b%F{magenta}%B$%b%f "
# LS_COLORS="fi=0;35:di=1;31:ex=4;36"

# theme: nature
USER_PROMPT="%F{green}%B<%b%F{cyan}%n%F{green}%\@%F{cyan}%m"
PS1="$USER_PROMPT %F{yellow}%~%F{green}%B>%b%F{yellow}%B$%b%f "
# PS1=" %F{yellow}%~%F{green}%B>%b%F{yellow}%B$%b%f "
LS_COLORS="fi=0;36:di=1;32:ex=4;33"

LC_ALL=C cowsay $(fortune) | lolcat
# neofetch
# eval "$(starship init zsh)"

[ "$(tty)" = "/dev/tty1" ] && exec startx
