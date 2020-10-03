#!/bin/bash
#
# Install Oh My Zsh and set dotfiles
# Install dotfiles and configure git

source ./install/utils.sh

# Install Oh My Zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Install plugin zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Install plugin zsh-completions
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

# Install plugin fast-syntax-highlighting
git clone https://github.com/zdharma/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting

# Install Spaceship ZSH theme
# Spaceship is a minimalistic, powerful and extremely customizable Zsh prompt.
# Check out https://denysdovhan.com/spaceship-prompt/ for more details
git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme

# Set Dracula theme and preferences for iTerm2
# See more about Dracula theme: https://draculatheme.com
# Enable word jumps and word deletion (Natural Text Editing) in iTerm2
# Change terminal font to JetBrains Mono
replace "com.googlecode.iterm2.plist"  "Library/Preferences/com.googlecode.iterm2.plist"

# Move/replace setting files to /Home
replace ".gitconfig"        ".gitconfig"
replace ".gitignore_global" ".gitignore_global"
replace ".zshrc"            ".zshrc"

# Git configs
echo_info "Configure your Git settings: "
nano ${HOME}/.gitconfig

# Fix “zsh compinit: insecure directories” warnings
# See https://docs.brew.sh/Shell-Completion
chmod go-w "$(brew --prefix)/share"

# Finish
echo_success "Dotfiles update complete."
