#!/bin/bash
#
# Install Zsh and set as default shell


# Install Zsh:
brew install zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install some external plugins:
brew install zsh-autosuggestions           # Additional suggestions for Zsh
brew install zsh-completions               # Additional completions for Zsh
brew install zsh-syntax-highlighting       # Additional syntax-highlighting for Zsh

# Install iconic font for Zsh
brew install font-hack-nerd-font

# Install Z
brew install z

# Set Zsh as your default shell:
chsh -s /bin/zsh


