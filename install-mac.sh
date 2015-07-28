#!/usr/bin/env bash

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


BREW_APPS=(\
coreutils \
caskroom/cask/brew-cask \
hub \
node \
tree \
bash-completion \
google-app-engine \
zsh \
)

for BREW_APP in "${BREW_APPS[@]}"; do
  echo "Installing \"$BREW_APP\"..."
  brew install --force $BREW_APP
  echo "...installed \"$BREW_APP\"."
done


brew tap caskroom/versions
brew tap AndersDJohnson/versions # AndersDJohnson

CASK_APPS=(\
google-chrome \
sublime-text \
google-drive \
java \
intellij-idea14_0 \
diffmerge \
heroku-toolbelt \
adium \
skype \
virtualbox \
)

for CASK_APP in "${CASK_APPS[@]}"; do
  echo "Installing \"$CASK_APP\"..."
  brew cask install --force $CASK_APP
  echo "...installed \"$CASK_APP\"."
done


