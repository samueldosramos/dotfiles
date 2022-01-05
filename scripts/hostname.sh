#!/bin/bash
#
# Hostname settings

source ./scripts/utils.sh

echo_info "Setting hostname (MacBook name)..."

sudo scutil --set ComputerName "$HOSTNAME"
sudo scutil --set LocalHostName "$HOSTNAME"
sudo scutil --set HostName "$HOSTNAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$HOSTNAME"

# Finish
echo_success "Hostname is updated."
