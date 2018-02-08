#!/bin/bash
#
# Bash profile with paths and aliases

##################### Paths ####################
export PATH="/usr/local/sbin:$PATH" #Homebrew path
export TERM="xterm-256color"


##################### Aliases ####################

# Update Brew and Cask formulaes
# Include -f to update apps that are marked as latest
alias update="brew update && brew upgrade && brew cu --all"

# Cleanup Brew and Cask cache
alias cleanup="brew cleanup && brew cask cleanup"

# Update macOS using Command Line Software Update Tool
alias macupdate="sudo softwareupdate -ia"

# Open focus mode
alias focus="open /Applications/{Magnet.app,Lungo.app,Be\ Focused\ Pro.app,Focus\ Matrix.app}"

# List npm packages installed globally
alias npmlist="npm list -g --depth=0"

