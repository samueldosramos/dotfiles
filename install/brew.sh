#!/bin/bash
#
# Install Homebrew
# Check out https://brew.sh for more details
# Comment (with #) what should not be installed and add the applications you want to install.


source ./install/utils.sh

# Install Homebrew
e_header "Installing Homebrew for you."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install Homebrew packages
e_header "Installing Brew packages..."
brew install bash                          # Bash shell (more updated)
brew install dockutil                      # Command line tool for dock
brew install git                           # Git client (more updated)
brew install nano                          # GNU Nano (more updated)
brew install node                          # Node.js client
brew install python                        # Python language support
brew install ruby                          # Ruby language (more updated)
brew install unrar                         # RAR and ZIP file support
brew install yarn                          # Dependency management

# Finished this step
sleep 1
e_success "Success! Brew and packages are installed."


# Install Homebrew-Cask
# Check out https://caskroom.github.io for more details
e_header "Installing Homebrew-Cask for you."
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/drivers
brew tap caskroom/versions

# Install Cask applications
e_header "Installing Cask applications..."
### Browser ###
brew cask install google-chrome            # Chrome browser
#brew cask install firefox                  # Firefox browser
#brew cask install opera                    # Opera browser

### Cloud ###
#brew cask install dropbox                  # Dropbox client
#brew cask install google-backup-and-sync   # Google Drive client
#brew cask install onedrive                 # Microsoft OneDrive client

### Developer ###
#brew cask install atom                     # Code editor
#brew cask install boostnote                # Note-taking for programmers
#brew cask install dash                     # Offline documentations
#brew cask install devdocs                  # Offline documentations
#brew cask install imageoptim               # Images optimizer
brew cask install iterm2                   # Better terminal for macOS
#brew cask install java                     # Java JDK
#brew cask install macdown                  # Markdown editor
#brew cask install postman                  # API development environment
#brew cask install sequel-pro               # MySQL/MariaDB database management
#brew cask install sip                      # Collect, organize & share your colors
#brew cask install sublime-text             # Code editor
brew cask install visual-studio-code       # Code editor

### Fonts ###
brew cask install font-fira-code           # Fira Code font
#brew cask install font-inter-ui            # Interface font
#brew cask install font-open-sans           # Open Sans font

### Player ###
#brew cask install iina                     # Media player
#brew cask install deezer                   # Deezer client
#brew cask install spotify                  # Spotify client
#brew cask install vlc                      # Media player

### Productivity ###
#brew cask install keepingyouawake          # A Caffeine clone for macOS
#brew cask install pdf-expert                # Fast, robust and beautiful PDF editor
#brew cask install spectacle                # Window control

### Social ###
#brew cask install discord                  # Discord
#brew cask install franz                    # Franz
#brew cask install rambox                   # Rambox
#brew cask install slack                    # Slack
#brew cask install skype                    # Skype
#brew cask install telegram                 # Telegram
#brew cask install whatsapp                 # Whatsapp

### Torrent ###
#brew cask install qbittorrent              # Torrent client
#brew cask install transmission             # Torrent client

### Utility ###
#brew cask install android-file-transfer    # For Android smartphone user's
#brew cask install appcleaner               # App uninstall
#brew cask install cleanmymac	               # Mac cleaning software
#brew cask install coconutbattery           # Battery health monitor
#brew cask install istat-menus              # A advanced system monitor for menubar
#brew cask install logitech-options         # Customize controls for Logitech products
#brew cask install logitech-unifying        # Manage devices that use a Unifying receiver
#brew cask install mounty                   # Read/write files on NTFS volumes
#brew cask install onyx                     # Multifunction utility software
#brew cask install paragon-ntfs             # Read/write files on NTFS volumes
#brew cask install smcfancontrol            # Fan controls and monitor temperature
#brew cask install the-unarchiver           # Archive extraction program (RAR)

### Quicklook ###
# Check out https://github.com/sindresorhus/quick-look-plugins for more details
#brew cask install qlcolorcode
#brew cask install qlstephen
#brew cask install qlmarkdown
#brew cask install quicklook-json
#brew cask install quicklook-csv
#brew cask install betterzipql
#brew cask install qlimagesize
#brew cask install webpquicklook
#brew cask install suspicious-package
#brew cask install quicklookase
#brew cask install qlvideo
#brew cask install provisionql
#brew cask install quicklookapk
#brew cask install quicklook-pat

# Finished this step
sleep 1
e_success "Success! Homebrew-Cask and applications are installed."


# Install Homebrew Cask Upgrade
# Check out https://github.com/buo/homebrew-cask-upgrade for more details
e_header "Installing Homebrew Cask Upgrade for you."
brew tap buo/cask-upgrade
brew update
brew cu

# Finished this step
sleep 1
e_success "Success! Homebrew Cask Upgrade are installed."


# Install MAS (Mac App Store command line interface)
# Check out https://github.com/mas-cli/mas for more details.
e_header "Installing  Mac App Store command line interface for you."
brew install mas

# Install Mac App Store application
e_header "Installing Mac App Store applications..."
#mas install 409201541   # Pages
#mas install 409183694   # Keynote
#mas install 409203825   # Numbers
#mas install 961632517   # Be Focused Pro
#mas install 1087284172  # Focus Matrix
#mas install 1005088137  # Instant Translate
#mas install 405772121   # LittleIpsum
#mas install 1263070803  # Lungo
#mas install 441258766   # Magnet
#mas install 1176895641  # Spark
#mas install 425424353   # The Unarchiver
#mas install 1278508951  # Trello
#mas install 492068728   # Yummy FTP Pro
#mas install 824171161   # Affinity Designer
#mas install 824183456   # Affinity Photo
#mas install 928871589   # Noizio


# Finished this step
sleep 1
e_success "Success! Mac App Store command line interface and applications are installed."


# Cleans up cached downloads
e_header "Clearing the cache..."
brew cleanup && brew cask cleanup


#Finish
e_success "Finished the packages installation"
