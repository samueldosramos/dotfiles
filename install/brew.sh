# Install Homebrew
echo "Installing Homebrew for you."
echo "› sudo softwareupdate -i -a"
sudo softwareupdate -ia
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install Homebrew packages
brew install dockutil
brew install git
brew install python
brew install unrar
brew install node
brew install openssl
#brew install zsh
#brew install zsh-completions

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew packages are installed."


# Install Cask
brew tap caskroom/cask
brew tap homebrew/science
brew tap caskroom/fonts

# Install Cask packages

brew cask install android-file-transfer
brew cask install coconutbattery
brew cask install firefox
brew cask install google-chrome
brew cask install google-drive
brew cask install imageoptim
brew cask install netbeans-php
brew cask install opera
brew cask install qbittorrent
brew cask install spotify
brew cask install the-unarchiver
brew cask install visual-studio-code
brew cask install vlc
brew cask install winbox

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew Cask applications are installed."


# Install Homebrew Cask Upgrade

brew tap buo/cask-upgrade
brew update
brew cu


#Cleans up cached downloads
brew cleanup && brew cask cleanup
