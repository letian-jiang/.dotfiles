#!/usr/bin/env bash

set -e          # Exit on error
set -o pipefail # Exit on pipe error
set -x          # Enable verbosity

DOTFILES_HOME=.dotfiles

# zsh plugin
ZSH_PLUGINS=(zsh-autosuggestions zsh-syntax-highlighting)
cd thirdparty/ohmyzsh/plugins
for plugin in ${ZSH_PLUGINS[@]}; do
  ln -sf $HOME/.dotfiles/thirdparty/$plugin
  echo "Configuring $plugin"
done
cd -

# ohmytmux
cd 
ln -sf $DOTFILES_HOME/thirdparty/ohmytmux/.tmux.conf
cd -

PROGRAMS=(tmux vim zsh git)

for program in ${PROGRAMS[@]}; do
  stow -v --target=$HOME $program
  echo "Configuring $program"
done

echo "Done!"