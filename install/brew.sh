# Install Homebrew
# Check out https://brew.sh for more details
# Comment (with #) what should not be installed and add the applications you want to install.


source ./install/utils.sh

# Install Homebrew
e_header "Installing Homebrew for you."
e_header "› sudo softwareupdate -i -a"
sudo softwareupdate -ia
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Scientific formulae for the Homebrew package manager
brew tap homebrew/science

# Install Homebrew packages
e_header "Installing Brew packages..."
brew install dockutil                      # Command line tool for dock
brew install git                           # Git client (more updated)
brew install python                        # Python language support
brew install ruby                          # Ruby language (more updated)
brew install unrar                         # RAR and ZIP file support
brew install node                          # Node.js client
brew install nano                          # GNU Nano (more updated)
brew install bash                          # Bash shell (more updated)
#brew install zsh                          # Zsh shell
#brew install zsh-completions              # Additional completion definitions for Zsh

# Finished this step
sleep 1
e_success "Success! Brew and packages are installed."


# Install Homebrew-Cask
# Check out https://caskroom.github.io for more details
e_header "Installing Homebrew-Cask for you."
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/drivers

# Install Cask applications
e_header "Installing Cask applications..."
### Browser ###
brew cask install firefox                   # Firefox browser
brew cask install google-chrome             # Chrome browser
brew cask install opera                     # Opera browser

### Torrent ###
brew cask install qbittorrent               # Torrent client
#brew cask install transmission              # Torrent client

### Player ###
#brew cask install vlc                       # Media player
brew cask install iina                      # Media player
brew cask install spotify                   # Spotify client
#brew cask install deezer                    # Deezer client

### Developer ###
brew cask install iterm2                    # Better terminal for macOS
brew cask install visual-studio-code        # Code editor
#brew cask install atom                      # Code editor
#brew cask install sublime-text              # Code editor
brew cask install dash                      # Offline documentations
brew cask install imageoptim                # Images optimizer
brew cask install boostnote                 # Note-taking for programmers
brew cask install macdown                   # Markdown editor
#brew cask install java                      # Java JDK

### Cloud ###
#brew cask install google-backup-and-sync    # Google Drive client
#brew cask install dropbox                   # Dropbox client
#brew cask install onedrive                 #Microsoft OneDrive client

### System ###
#brew cask install android-file-transfer     # For Android smartphone user's
brew cask install appcleaner                # App uninstall
brew cask install coconutbattery            # Battery health monitor
brew cask install smcfancontrol             # Fan controls and monitor temperature
brew cask install spectacle                 # Window control
brew cask install the-unarchiver            # Archive extraction program (RAR)
brew cask install keepingyouawake           # A Caffeine clone for macOS
brew cask install veertu-desktop            # Native Virtualization For macOS

### Fonts ###
brew cask install font-fira-code            # Fira Code font
brew cask install font-open-sans            # Open Sans font
brew cask install font-interface            # Interface font

### Miscellaneous ###


### Quicklook ###
# Check out https://github.com/sindresorhus/quick-look-plugins for more details
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install qlimagesize
brew cask install webpquicklook
#brew cask install suspicious-package
brew cask install quicklookase
brew cask install qlvideo
brew cask install provisionql
brew cask install quicklookapk
brew cask install quicklook-pat

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
mas install 409201541   # Pages
mas install 409183694   # Keynote
mas install 409203825   # Numbers
#mas install 1176895641  # Spark
#mas install 961632517   # Be Focused Pro
#mas install 1087284172  # Focus Matrix
#mas install 405772121   # LittleIpsum
#mas install 1005088137  # Instant Translate
#mas install 458887729   # Translate Tab
#mas install 492068728   # Yummy FTP Pro

# Finished this step
sleep 1
e_success "Success!  Mac App Store command line interface and applications are installed."


# Cleans up cached downloads
e_header "Clearing the cache..."
brew cleanup && brew cask cleanup


#Finish
e_success "Finished the packages installation"
