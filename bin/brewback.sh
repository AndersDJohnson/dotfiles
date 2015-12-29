#!/bin/bash

cd ~/.dotfiles
brew list > brew.txt
brew cask list > brew-cask.txt
git reset
git add brew.txt brew-cask.txt && \
git commit -m "Update brew and cask lists." && \
git push

