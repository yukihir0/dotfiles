#!/bin/sh

# update homebrew
brew update

# update formula
brew upgrade

# update cask formula
brew cask upgrade `brew cask list`

# cleanup formula
brew cleanup
