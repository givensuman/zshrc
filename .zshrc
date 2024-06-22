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

extract() {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

mk() {
  mkdir -p $1
  cd $1
}

venv() {
  python3 -m venv .venv
  source .venv/bin/activate
}

python_venv() {
  MYVENV=.venv
  # when you cd into a folder that contains $MYVENV
  [[ -d $MYVENV ]] && source $MYVENV/bin/activate > /dev/null 2>&1
  # when you cd into a folder that doesn't
  [[ ! -d $MYVENV ]] && deactivate > /dev/null 2>&1
}
autoload -U add-zsh-hook
add-zsh-hook chpwd python_venv

python_venv

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
  zsh-eza
  zsh-bat
  zsh-autosuggestions # must be second-to-last
  zsh-syntax-highlighting # must be last
)

ZSH_THEME="appa"
bindkey '^g' autosuggest-accept
bindkey '^f' forward-word
export AUTOCD=1

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
