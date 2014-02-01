#$BASE/bi$BASE/bash

BASE=$(dirname $(readlink -f $0))

cd "$BASE"

git submodule update --init

ln -sf "$BASE" ~/.dotfiles
ln -sf .dotfiles/zshrc ~/.zshrc
ln -sf .dotfiles/oh-my-zsh ~/.oh-my-zsh

ln -sf .dotfiles/bashrc ~/.bashrc
ln -sf .dotfiles/bcrc ~/.bcrc
ln -sf .dotfiles/bash_aliases ~/.bash_aliases
ln -sf .dotfiles/commonshrc ~/.commonshrc

ln -sf .dotfiles/tmux.conf ~/.tmux.conf

ln -sf .dotfiles/gitconfig ~/.gitconfig
ln -sf .dotfiles/gitconfig-user ~/.gitconfig-user
ln -sf .dotfiles/gitconfig-github ~/.gitconfig-github

