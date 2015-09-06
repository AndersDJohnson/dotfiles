#!/usr/bin/env bash

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/x11

brew update

BREW_APPS="$(cat brew.txt)"

for BREW_APP in ${BREW_APPS}; do
  echo "Installing \"$BREW_APP\"..."
  brew install --force $BREW_APP
  echo "...installed \"$BREW_APP\"."
done

brew tap caskroom/versions
brew tap AndersDJohnson/versions # AndersDJohnson

brew cask update

CASK_APPS="$(cat brew-cask.txt)"

for CASK_APP in ${CASK_APPS}; do
  echo "Installing \"$CASK_APP\"..."
  brew cask install --force $CASK_APP
  echo "...installed \"$CASK_APP\"."
done


