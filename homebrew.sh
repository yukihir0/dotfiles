#!/bin/sh

# update homebrew
brew update

# update formula
brew upgrade

# install homebrew-binary
brew tap homebrew/binary

# install homebrew-science
brew tap homebrew/science

# install formula
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install wget
brew install jq
brew install tree
brew install watch
brew install openssl
brew install dnsmasq
brew install git
brew install hub
brew install tig
brew install tmux
brew install reattach-to-user-namespace
brew install rbenv
brew install ruby-build
brew install plenv
brew install perl-build
brew install pyenv
brew install go --cross-compile-all
brew install elixir
brew install mecab
brew install mecab-ipadic
brew install mysql
brew install postgres
brew install redis
brew install mongodb
brew install heroku-toolbelt
brew install jenkins
brew install elasticsearch
brew install awscli
brew install ffmpeg

# install macvim-kaoriya
brew tap supermomonga/homebrew-splhack
brew install --HEAD cmigemo-mk
brew install --HEAD ctags-objc-ja
brew install gettext-mk
brew install --HEAD macvim-kaoriya
brew linkapps

# install homebrew-cask
brew install caskroom/cask/brew-cask

# install launchrocket
brew tap jimbojsb/launchrocket
brew cask install launchrocket

# install peco
brew tap peco/peco
brew install peco

# install dmg package
brew cask install iterm2
brew cask install coteditor
brew cask install dropbox
brew cask install google-japanese-ime
brew cask install java
brew cask install virtualbox
brew cask install vagrant
brew cask install packer
brew cask install terraform
brew cask install dockertoolbox
brew cask install mysqlworkbench
brew cask install xquartz
brew cask install inkscape
brew cask install td-agent
brew cask install processing

# ergodox
brew tap osx-cross/avr
brew install avr-libc
brew install dfu-programmer
brew install teensy_loader_cli

# cleanup formula
brew cleanup
