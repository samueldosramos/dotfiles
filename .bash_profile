#!/bin/bash
#
# Bash profile with paths and aliases


# ========== Aliases ==========
# Update Brew and Cask formulaes
# Include -f to update apps that are marked as latest
alias update="brew update && brew upgrade && brew cu --all"

# Cleanup Brew and Cask cache
alias cleanup="brew cleanup && brew cleanup"

# Update macOS using Command Line Software Update Tool
alias macupdate="sudo softwareupdate -ia"

# Open focus mode
alias focus="open /Applications/{Magnet.app,Lungo.app,Be\ Focused\ Pro.app,Focus\ Matrix.app}"

# Open work mode
alias work="open /Applications/{Magnet.app,Be\ Focused\ Pro.app,Chrome.app,Visual\ Studio\ Code.app,Slack.app}"

# List npm packages installed globally
alias npmlist="npm list -g --depth=0"

# Update npm packages globally
alias npmupdate="npm update -g"

# Undo the last commit
alias uncommit="git reset HEAD~1"

# Show/hide hidden files in Finder
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# LS aliases
alias ls="ls -GF"
alias ll="ls -lG"
alias la="ls -aGF"


# ========== Paths ==========
# Homebrew path
export PATH="/usr/local/sbin:$PATH"


# ========== Others resources ==========
# Export terminal colors
export TERM="xterm-256color"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch) $ "
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"

# Git branch in terminal
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
