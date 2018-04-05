#!/bin/bash
#
# Command line tool for managing dock items
# Check out https://github.com/kcrawford/dockutil for more details
# Configure applications you want to set in dock

source ./install/utils.sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/Spark.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/Applications/Notes.app"
dockutil --no-restart --add "/Applications/Franz.app"

killall Dock

e_success "Success! Dock is set."
