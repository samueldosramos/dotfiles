#!/bin/bash
#
# mascOS setup script
# Font: https://github.com/samuelramox/dotfiles
# Main install script

source ./scripts/utils.sh

# Add Olister data
echo_info "Add your data:"
nano ./scripts/user.sh

# Install apps
bash ./scripts/apps.sh

# Install dotfiles
bash ./scripts/dotfiles.sh

# Install npm packages
bash ./scripts/npm.sh

# Run macOS defaults
bash ./scripts/macos.sh

# Dock settings
bash ./scripts/dock.sh

# Generate SSH
bash ./scripts/ssh.sh

# Set hostname
bash ./scripts/hostname.sh

# Create a directory for projects and development
echo_info "Creating Developer directory in Home."
mkdir ${HOME}/Developer

# Cleanup cached downloads and remove the installation zip and folder
echo_info "Removing unnecessary files."
brew cleanup
rm -rf ${HOME}/dotfiles.tar.gz
rm -rf ${HOME}/dotfiles.zip
rm -rf ${DOTFILES_DIRECTORY}

# Finish
echo_success "Reboot and enjoy!"
