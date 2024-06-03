# ___________________________________/\\\____________________________________
#  __________________________________\/\\\____________________________________
#   __________________________________\/\\\____________________________________
#    ________/\\\\\\\\\\\__/\\\\\\\\\\_\/\\\__________/\\/\\\\\\\_____/\\\\\\\\_
#     _______\///////\\\/__\/\\\//////__\/\\\\\\\\\\__\/\\\/////\\\__/\\\//////__
#      ____________/\\\/____\/\\\\\\\\\\_\/\\\/////\\\_\/\\\___\///__/\\\_________
#       __________/\\\/______\////////\\\_\/\\\___\/\\\_\/\\\________\//\\\________
#        __/\\\__/\\\\\\\\\\\__/\\\\\\\\\\_\/\\\___\/\\\_\/\\\_________\///\\\\\\\\_
#         _\///__\///////////__\//////////__\///____\///__\///____________\////////___

#############
# Libraries #
#############

# bat
export BAT_THEME="tokyonight_night"

# tmux
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_UNICODE=true
export ZSH_TMUX_FIXTERM=true
export ZSH_TMUX_AUTONAME_SESSION=true

# bun
[ -s "/home/given/.bun/_bun" ] && source "/home/given/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fnm
eval "$(fnm env --use-on-cd)"

# nvim
export PATH="$PATH:/opt/nvim-linux64/bin"

# golang
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$PATH:/usr/local/go/bin"

# ziglang
export PATH="$PATH:/usr/local/zig"

###########
# Aliases #
###########

# safety first
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# list processes
alias processes="ps -f"

# refresh shell environment
alias refresh="source $HOME/.zshrc"

alias lazy="lazygit"

#############
# Functions #
#############

compress() {
  tar -czvf $1.tgz $1
}

decompress() {
  tar -zxv -f $1
}

##########
# Config #
##########

plugins=(
  git
  git-extras
  sudo
  copypath
  copyfile
  common-aliases
  command-not-found
  tmux
  zinsults
  zsh-eza
  zsh-bat
  zsh-autosuggestions # must be second-to-last
  zsh-syntax-highlighting # must be last
)

ZSH_THEME="appa"
bindkey '^g' autosuggest-accept
export AUTOCD=1

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
