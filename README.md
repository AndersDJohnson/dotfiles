[projecturl]: http://github.com/AndersDJohnson/dotfiles

[dotfiles][projecturl]
======================

Install
------------

1. Clone repository into a `~/.dotfiles` directory:
   * `git clone https://github.com/AndersDJohnson/dotfiles.git ~/.dotfiles`

2. (optional) Fetch submodules:
   * `git submodule init`
   * `git submodule update`

3. (optional) Create symlinks to desired configs:
   * `ln -s ~/.dotfiles/vim ~/.vim && ln -s ~/.vim/vimrc ~/.vimrc`
   * `ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf`
   * `ln -s ~/.dotfiles/bashrc ~/.bashrc`
   * `ln -s ~/.dotfiles/bash_profile ~/.bash_profile`
   * `ln -s ~/.dotfiles/bash_aliases ~/.bash_aliases`
   * `ln -s ~/.dotfiles/screenrc ~/.screenrc`


Notes
-----

### Submodules

#### [AndersDJohnson/dotvim](http://github.com/AndersDJohnson/dotvim)

#### [AndersDJohnson/gitconfig](http://github.com/AndersDJohnson/gitconfig)

1. Install:
  * `./gitconfig/install.sh`


### Per-host configurations

Some configuration files will detect and include host-specific configuration files.
For example, `commonshrc` looks for `~/.commonshrc.host`, which I set up as a symlink to the specific commonshrc configuration file for that host in version control.
Or, you can just name file based on hostname, e.g. if your hostname is `home-computer`, then put a file named `~/.commonshrc.home-computer`.

## References
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
