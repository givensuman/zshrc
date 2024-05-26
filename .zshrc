# ___________________________________/\\\____________________________________
#  __________________________________\/\\\____________________________________
#   __________________________________\/\\\____________________________________
#    ________/\\\\\\\\\\\__/\\\\\\\\\\_\/\\\__________/\\/\\\\\\\_____/\\\\\\\\_
#     _______\///////\\\/__\/\\\//////__\/\\\\\\\\\\__\/\\\/////\\\__/\\\//////__
#      ____________/\\\/____\/\\\\\\\\\\_\/\\\/////\\\_\/\\\___\///__/\\\_________
#       __________/\\\/______\////////\\\_\/\\\___\/\\\_\/\\\________\//\\\________
#        __/\\\__/\\\\\\\\\\\__/\\\\\\\\\\_\/\\\___\/\\\_\/\\\_________\///\\\\\\\\_
#         _\///__\///////////__\//////////__\///____\///__\///____________\////////___

##########
# Config #
##########

ZSH_THEME="givensuman"

plugins=(
  git
  sudo
  copypath
  copyfile
  zsh-autosuggestions
  zsh-syntax-highlighting
  tmux
)

# github.com/sharkdp/bat
alias cat="bat"
# github.com/0xTadash1/bat-into-tokyonight
export BAT_THEME="tokyonight_night"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

bindkey '^g' autosuggest-accept

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

# tmux
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_UNICODE=true
ZSH_TMUX_FIXTERM=true
ZSH_TMUX_AUTONAME_SESSION=true

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

#############
# Functions #
#############

# base64
base64_encode() {
  echo -n "$1" | base64
}
base64_decode() {
  echo -n "$1" | base64 -d
}

# tar
compress() {
  tar -czvf $1.tgz $1
}
decompress() {
  tar -zxv -f $1
}

# make and go to new directory
mkdircd() {
  mkdir $1
  cd $1
}

# backup file
bak() {
  cp $1{,.bak}
}

# add all permissions
perm-all() {
  chmod -R 777 $1
}

# claim ownership 
claim() {
  sudo chown -R $USER $1
}
