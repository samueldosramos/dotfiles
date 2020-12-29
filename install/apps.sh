#!/bin/bash
#
# Install Homebrew and applications
# Check out https://brew.sh for more details
# Comment (with #) what should not be installed and add the applications you want to install.

source ./install/utils.sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install Homebrew taps
TAPS=(
  homebrew/cask-drivers
  homebrew/cask-fonts
  homebrew/cask-versions
  homebrew/command-not-found
)

for tap in ${TAPS[@]}
do
  brew tap $tap
done

# Install Homebrew formulas
FORMULAS=(
  curl
  git
  nano
  node
  postgresql
  python
  ruby
  tree
  unrar
  yarn
  zsh
  TomAnthony/brews/itermocil
)

for formula in ${FORMULAS[@]}
do
  brew install $formula
done

# Install Homebrew casks
CASKS=(
  adguard
  beekeeper-studio
  dash
  docker
  font-jetbrains-mono
  google-chrome
  iina
  istat-menus
  iterm2
  openinterminal
  paw
  pdf-expert
  qbittorrent
  sip
  visual-studio-code
)

for app in ${CASKS[@]}
do
  brew install --cask $app
done

# Install Homebrew Cask Upgrade
# Check out https://github.com/buo/homebrew-cask-upgrade for more details
brew tap buo/cask-upgrade
brew update
brew cu

# Finish
echo_success "Finished applications installation."
