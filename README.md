[projecturl]: http://github.com/AndersDJohnson/dotfiles

[dotfiles][projecturl]
======================

## See Also

* [AndersDJohnson/unix-notes](https://github.com/AndersDJohnson/unix-notes)
* [AndersDJohnson/mac-notes](https://github.com/AndersDJohnson/mac-notes)


Install
------------

1. Clone repository into a `~/.dotfiles` directory:
   * `git clone https://github.com/AndersDJohnson/dotfiles.git ~/.dotfiles`

### Automatic

1. Run the `install.sh` script.

2. (optional) On Macs, then also run the `install-mac.sh` script.

### Manual
1. (optional) Fetch submodules:
   * `git submodule update --init --recursive`

2. (optional) Create symlinks to desired configs:
   * `ln -s ~/.dotfiles/vim ~/.vim && ln -s ~/.vim/vimrc ~/.vimrc`
   * `ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf`
   * `ln -s ~/.dotfiles/bashrc ~/.bashrc`
   * `ln -s ~/.dotfiles/bash_profile ~/.bash_profile`
   * `ln -s ~/.dotfiles/bash_aliases ~/.bash_aliases`
   * `ln -s ~/.dotfiles/screenrc ~/.screenrc`
   * etc.

3. (optional) etc.

Notes
-----

### Submodules

#### [AndersDJohnson/dotvim](http://github.com/AndersDJohnson/dotvim)
* See [AndersDJohnson/dotvim#install](https://github.com/AndersDJohnson/dotvim#install).

#### [AndersDJohnson/gitconfig](http://github.com/AndersDJohnson/gitconfig)
* See [AndersDJohnson/gitconfig#install](https://github.com/AndersDJohnson/gitconfig#install).


### Per-host configurations

Some configuration files will detect and include host-specific configuration files.
For example, `commonshrc` looks for `~/.commonshrc.host`, which I set up as a symlink to the specific commonshrc configuration file for that host in version control.
Or, you can just name file based on hostname, e.g. if your hostname is `home-computer`, then put a file named `~/.commonshrc.home-computer`.

## References
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
