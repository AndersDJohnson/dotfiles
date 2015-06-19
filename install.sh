#!/usr/bin/env bash

BASE=$(dirname $(readlink -f $0))

# $1 = filename
template() {
  echo "$(eval "echo \"$(cat "$1")\"")"
}

## variables


## run

cd "$BASE"

git submodule update --init

ln -sf "$BASE" ~/.dotfiles
ln -sf .dotfiles/zshrc ~/.zshrc
ln -sf .dotfiles/oh-my-zsh ~/.oh-my-zsh

ln -sf .dotfiles/bashrc ~/.bashrc
ln -sf .dotfiles/bash_aliases ~/.bash_aliases
ln -sf .dotfiles/commonshrc ~/.commonshrc
ln -sf .dotfiles/inputrc ~/.inputrc

ln -sf .dotfiles/bcrc ~/.bcrc

ln -sf .dotfiles/tmux.conf ~/.tmux.conf

# install gitconfig
cd gitconfig
./install.sh
cd "$BASE"

# git-extra install
cd git-extras
sudo make install

