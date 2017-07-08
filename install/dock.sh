#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "~/Applications/Chrome Apps.localized/Profile 4 hmjkmjkepdijhoojdojkdfohbdgmmhki.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"

killall Dock

echo "Success! Dock is set."
