BREW_APPS=(\
coreutils \
caskroom/cask/brew-cask \
hub \
)
CASK_APPS=(\
google-chrome \
sublime-text \
)

for BREW_APP in "${BREW_APPS[@]}"; do
  echo "Installing \"$BREW_APP\"..."
  brew install --force $BREW_APP
  echo "...installed \"$BREW_APP\"."
done

for CASK_APP in "${CASK_APPS[@]}"; do
  echo "Installing \"$CASK_APP\"..."
  brew cask install --force $CASK_APP
  echo "...installed \"$CASK_APP\"."
done


