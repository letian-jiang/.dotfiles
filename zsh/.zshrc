# ZSH
export ZSH=$HOME/.dotfiles/thirdparty/ohmyzsh

ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source .zsh_aliases

# User configuration
export EDITOR='vim'
