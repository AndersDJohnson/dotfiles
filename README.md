[projecturl]: http://github.com/AndersDJohnson/dotfiles

[dotfiles][projecturl]
======================

Installation
------------

1. Clone repository into a `$HOME/.dotfiles` directory:
   * `git clone git://github.com/AndersDJohnson/dotfiles.git ~/.dotfiles`

2. (optional) Fetch submodules:
   * `git submodule init`
   * `git submodule update`

3. Create desired symlinks:
   * For example, `ln -s ~/.dotfiles/screenrc ~/.screenrc`

Notes
-----

### Submodules

#### [AndersDJohnson/dotvim](http://github.com/AndersDJohnson/dotvim)
configuration (all are optional):
   * `ln -s ~/.dotfiles/vim ~/.vim && ln -s ~/.vim/vimrc ~/.vimrc`
   * `ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf`
   * `ln -s ~/.dotfiles/bashrc ~/.bashrc`
   * `ln -s ~/.dotfiles/bash_aliases ~/.bash_aliases`
   * `ln -s ~/.dotfiles/screenrc ~/.screenrc`

