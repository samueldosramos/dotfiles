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
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install Dracula theme for iTerm2 and Terminal.app
# See more: https://draculatheme.com
git clone https://github.com/dracula/iterm.git ~/.iterm2-theme
git clone https://github.com/dracula/terminal-app.git ~/.terminal-theme

# Install Z - jump around
brew install z

# Move/replace setting files to /Home
replace ".gitconfig"        ".gitconfig"
replace ".gitignore_global" ".gitignore_global"
replace ".zshrc"            ".zshrc"

# Git configs
e_header "Configure your Git settings: "
nano ${HOME}/.gitconfig

# Finish
e_success "Dotfiles update complete."
