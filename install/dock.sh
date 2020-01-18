#!/bin/bash
#
# Command line tool for managing dock items
# Check out https://github.com/kcrawford/dockutil for more details
# Configure applications you want to set in dock

source ./install/utils.sh

# Install dockutil
brew install dockutil

# Dock settings
dockutil --no-restart --remove all
dockutil --no-restart --add "/System/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/System/Applications/Reminders.app"
dockutil --no-restart --add "/System/Applications/Notes.app"
killall Dock

# Finish
e_success "Dock settings updated."
