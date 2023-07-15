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
	# antigen bundle zdharma/fast-syntax-highlighting
	antigen bundle Aloxaf/fzf-tab
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

# themes: tokyonight (1), nature (2), sunrise (3)
source "$XDG_CONFIG_HOME/zsh/themes.zsh" 1
# LC_ALL=C cowsay $(fortune) | lolcat
# neofetch

# [ "$(tty)" = "/dev/tty1" ] && exec startx
eval "$(starship init zsh)"
