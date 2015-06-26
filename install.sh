#!/usr/bin/env bash

BASE=~/.dotfiles

## run

cd "$BASE"

git submodule update --init

ln -sf $BASE/zshrc ~/.zshrc
ln -sf $BASE/oh-my-zsh ~/.oh-my-zsh
ln -sf $BASE/bashrc ~/.bashrc
ln -sf $BASE/bash_profile ~/.bash_profile
ln -sf $BASE/bash_aliases ~/.bash_aliases
ln -sf $BASE/commonshrc ~/.commonshrc
ln -sf $BASE/inputrc ~/.inputrc
ln -sf $BASE/bcrc ~/.bcrc
ln -sf $BASE/tmux.conf ~/.tmux.conf

# install gitconfig
cd gitconfig
./install.sh
cd "$BASE"

# git-extra install
cd git-extras
sudo make install

