#!/bin/bash
#
# Install Zsh and set as default shell


# Install Zsh:
brew install zsh

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Install some external plugins:
brew install zsh-autosuggestions           # Additional suggestions for Zsh
brew install zsh-completions               # Additional completions for Zsh
brew install zsh-syntax-highlighting       # Additional syntax-highlighting for Zsh

# Install iconic font for Zsh
brew install font-hack-nerd-font

# Install Z
brew install z

# Install Powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Set Zsh as your default shell:
chsh -s /bin/zsh


