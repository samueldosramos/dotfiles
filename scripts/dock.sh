#!/bin/bash
#
# Command line tool for managing dock items
# Check out https://github.com/kcrawford/dockutil for more details
# Configure apps you want to set in dock

source ./scripts/utils.sh

echo_info "Setting Dock..."

# Install dockutil
brew install dockutil

# Dock settings
dockutil --no-restart --remove all
dockutil --no-restart --add "/System/Applications/Launchpad.app"
dockutil --no-restart --add "/System/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/System/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/System/Applications/Reminders.app"
dockutil --no-restart --add "/System/Applications/Notes.app"
killall Dock

# Finish
echo_success "Dock settings updated."
