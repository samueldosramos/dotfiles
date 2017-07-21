#!/bin/sh
# Command line tool for managing dock items
# Check out https://github.com/kcrawford/dockutil for more details
# Configure applications you want to set in dock


dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"

killall Dock

echo -e "\nSuccess! Dock is set.\n"
