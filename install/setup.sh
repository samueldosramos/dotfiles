#!/bin/bash
#
# mascOS setup script
# Font: https://github.com/samuelramox/dotfiles
# Main install script

source ./install/utils.sh
keep_sudo_alive

# Install applications
seek_confirmation "Warning: This step install applications."
if is_confirmed; then
  e_header "Please, configure you applications before installation:"
  nano ${DOTFILES_DIRECTORY}/install/apps.sh
  bash ./install/apps.sh
else
  e_warning "Skipped applications install."
fi

# Dotfiles configs
seek_confirmation "Warning: This step may overwrite your existing dotfiles and git configs."
if is_confirmed; then
  bash ./install/dotfiles.sh
else
  e_warning "Skipped dotfiles settings."
fi

# Install npm packages
seek_confirmation "Warning: This step install npm packages"
if is_confirmed; then
  bash ./install/npm.sh
else
  e_warning "Skipped npm settings update."
fi

# Run macOS defaults
seek_confirmation "Warning: This step may modify your macOS system defaults."
if is_confirmed; then
  bash ./install/macos.sh
else
  e_warning "Skipped macOS settings update."
fi

# Dock settings
seek_confirmation "Warning: This step may modify your dock system defaults."
if is_confirmed; then
  bash ./install/dock.sh
else
  e_warning "Skipped Dock settings update."
fi

# Generate ssh
seek_confirmation "Warning: This step generate SSH"
if is_confirmed; then
  ask "Please provide an email address: " && printf "\n"
  ssh-keygen -t rsa -b 4096 -C "$REPLY"
  e_success "Generated SSH key."
  e_warning "After finishing the installation, use copyssh command to copy the SSH key to the clipboard."
else
  e_warning "Skipped SSH settings."
fi

# Hostname
seek_confirmation "Warning: This step update hostname (MacBook name)"
if is_confirmed; then
  ask "Please provide an hostname (MacBook name): " && printf "\n"
  sudo scutil --set ComputerName "$REPLY"
  sudo scutil --set LocalHostName "$REPLY"
  sudo scutil --set HostName "$REPLY"
  sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$REPLY"
  e_success "Hostname is updated."
else
  e_warning "Skipped hostname settings."
fi

# Create a directory for projects and development
e_header "Creating Developer directory in Home"
mkdir ${HOME}/Developer

# Cleanup cached downloads and remove the installation zip and folder
e_header "Removing unnecessary files"
brew cleanup && brew cleanup
rm -rf ${HOME}/dotfiles.tar.gz
rm -rf ${HOME}/dotfiles.zip
rm -rf ${DOTFILES_DIRECTORY}

seek_confirmation "Warning: This step enable trimforce for SSD. Only required if you use third-party SSDs."
if is_confirmed; then
  e_header "Enabling trimforce..."
  sudo trimforce enable
  e_success "Trimforce is enabled! Rebooting..."
else
  e_warning "Skipped trimforce update."
fi

# Finish
e_success "Reboot and enjoy!"
