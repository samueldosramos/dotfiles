#!/bin/bash
#
# Install oh-my-zsh and set dotfiles
# Install dotfiles and configure git

source ./install/utils.sh
keep_sudo_alive

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Install some external plugins:
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-syntax-highlighting

# Install Spaceship ZSH theme
# See more: https://denysdovhan.com/spaceship-prompt/
git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/themes/spaceship-prompt
ln -s ~/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/themes/spaceship.zsh-theme

# Set Dracula theme and preferences for iTerm2 and Terminal.app
# See more about Dracula theme: https://draculatheme.com
# Enable word jumps and word deletion (Natural Text Editing) in iTerm2
# Change terminal font to Fira Code
replace "com.googlecode.iterm2.plist"  "Library/Preferences/com.googlecode.iterm2.plist"

# Move/replace setting files to /Home
replace ".gitconfig"        ".gitconfig"
replace ".gitignore_global" ".gitignore_global"
replace ".zshrc"            ".zshrc"

# Git configs
e_header "Configure your Git settings: "
nano ${HOME}/.gitconfig

# Fix “zsh compinit: insecure directories” warnings
# See https://docs.brew.sh/Shell-Completion
chmod go-w "$(brew --prefix)/share"

# Finish
e_success "Dotfiles update complete."
