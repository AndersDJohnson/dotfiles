# .zshrc zsh shell configuration

if [ -f ~/.profile ]; then
  source ~/.profile
fi

SHELLRC=".zshrc"

function src () {
  source ~/.zshrc
}

###
# shell options
###
# dotglob lets glob match dotfiles
setopt dotglob

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Change this value to set how frequently ZSH updates¬
export UPDATE_ZSH_DAYS=30

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(\
# Note: vi-mode is painfully slow on OSX Mavericks with the native Git
vi-mode \
dotenv \
)

# per-host
_HOSTNAME=hostname
HOSTRC="~/.dotfiles/zshrc.${_HOSTNAME}"
if [ -f "$HOSTRC" ]; then
    source "$HOSTRC"
fi
if [ -f ~/.zshrc.host ]; then
    source ~/.zshrc.host
fi

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Autocorrect exceptions
#alias vim='nocorrect vim '
alias git='nocorrect git '
alias derby='nocorrect derby '

if [ -x dircolors ]; then
  eval `dircolors ~/.dotfiles/dircolors-solarized/dircolors.ansi-dark`
fi

# common shell config
if [ -f ~/.commonshrc ]; then
    source ~/.commonshrc
fi
