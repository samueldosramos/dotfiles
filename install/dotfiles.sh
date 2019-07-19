#!/bin/bash
#
# Install Zsh and set as default shell
# Install dotfiles and configure git

source ./install/utils.sh
keep_sudo_alive

# Install Zsh:
brew install zsh

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Install some external plugins:
brew install zsh-autosuggestions           # Additional suggestions for Zsh
brew install zsh-completions               # Additional completions for Zsh
brew install zsh-syntax-highlighting       # Additional syntax-highlighting for Zsh

# Set Zsh as your default shell:
chsh -s /bin/zsh

# Install iconic font for Zsh
# See more: https://nerdfonts.com/
brew cask install font-hack-nerd-font

# Install Powerlevel10k theme
# See more: https://github.com/romkatv/powerlevel10k
# See more: https://github.com/romkatv/gitstatus
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Install Z - jump around
brew install z

# Move/replace setting files to /Home
replace ".bash_profile"     ".bash_profile"
replace ".gitconfig"        ".gitconfig"
replace ".gitignore_global" ".gitignore_global"
replace ".zshrc"            ".zshrc"

# Git configs
e_header "Configure your Git settings: "
nano ${HOME}/.gitconfig

# Finish
e_success "Dotfiles update complete."
