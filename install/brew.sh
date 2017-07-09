# Install Homebrew
echo "Installing Homebrew for you."
echo "› sudo softwareupdate -i -a"
sudo softwareupdate -ia
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade


# Scientific formulae for the Homebrew package manager
brew tap homebrew/science


# Install Homebrew packages
brew install dockutil                      # Command line tool for dock
brew install git                           # Git client (more updated)
brew install python                        # Python language support
brew install unrar                         # RAR and ZIP file support
brew install node                          # Node.js client
brew install openssl                       # SSL protocol client
#brew install zsh                          # Zsh shell
#brew install zsh-completions              # Additional completion definitions for Zsh


# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew packages are installed."


# Install Cask
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/drivers


# Install Cask packages
### Browser ###
brew cask install firefox                   # Firefox browser
brew cask install google-chrome             # Chrome browser
brew cask install opera                     # Opera browser

### Torrent ###
brew cask install qbittorrent               # Torrent client
brew cask install transmission              # Torrent client

### Player ###
brew cask install vlc                       # Media player
brew cask install iina                      # Media player
brew cask install spotify                   # Spotify client

### Developer ###
brew cask install iterm2                    # Better terminal for macOS
brew cask install visual-studio-code        # Code editor
brew cask install dash                      # Offline documentations
brew cask install netbeans-php              # PHP IDE
brew cask install imageoptim                # Images optimizer
brew cask install boostnote                 # Note-taking for programmers
brew cask install macdown                   # Markdown editor

### Cloud ###
brew cask install google-drive              # Google Drive client
brew cask install dropbox                   # Dropbox client

### System ###
brew cask install android-file-transfer     # For Android smartphone user's
brew cask install appcleaner                # App uninstall
brew cask install coconutbattery            # Battery health monitor
brew cask install smcfancontrol             # Fan controls and monitor temperature
brew cask install spectacle                 # Window control
brew cask install the-unarchiver            # Archive extraction program (RAR)
brew cask install logitech-options          # Logitech device customizer
brew cask install winbox                    # Winbox client

### Fonts ###
brew cask install font-fira-code            # Fira Code font


# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew Cask applications are installed."


# Install Homebrew Cask Upgrade
brew tap buo/cask-upgrade
brew update
brew cu


# Cleans up cached downloads
brew cleanup && brew cask cleanup
