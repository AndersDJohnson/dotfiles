#!/usr/bin/env bash

BASE=~/.dotfiles

## run

cd "$BASE"

git submodule update --init --recursive

echo "Linking..."

ln -sf $BASE/zshrc ~/.zshrc
ln -sf $BASE/oh-my-zsh ~/.oh-my-zsh
ln -sf $BASE/bashrc ~/.bashrc
ln -sf $BASE/bash_profile ~/.bash_profile
ln -sf $BASE/bash_aliases ~/.bash_aliases
ln -sf $BASE/commonshrc ~/.commonshrc
ln -sf $BASE/inputrc ~/.inputrc
ln -sf $BASE/bcrc ~/.bcrc
ln -sf $BASE/tmux.conf ~/.tmux.conf
ln -sf $BASE/gemrc ~/.gemrc

echo "Done."

echo "Installing submodules..."

export INSTALLING=true
source ~/.bashrc

echo "Installing gitconfig..."

cd gitconfig
./install.sh
cd "$BASE"

echo "Done."

echo "Installing git-extras..."

cd git-extras
sudo make install

echo "Done."

echo "Done."

