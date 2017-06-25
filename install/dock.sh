#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Finder.app"
dockutil --no-restart --add "/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "~/Applications/Chrome Apps.localized/Google Keep - notes and lists.app"
dockutil --no-restart --add "/Applications/Terminal.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add '' --type spacer --section apps --after Visual Studio Code
dockutil --no-restart --add '~/.Trash' --view grid --display folder --allhomes

killall Dock

echo "Success! Dock is set."
