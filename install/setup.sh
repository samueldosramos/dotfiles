#!/bin/zsh
#
# mascOS setup script
# Font: https://github.com/samuelramox/dotfiles
# Main install script

source ./install/utils.sh

# Add Olister data
echo_info "Add your data:"
nano ./install/user.sh

# Install apps
bash ./install/apps.sh

# Install dotfiles
bash ./install/dotfiles.sh

# Install npm packages
bash ./install/npm.sh

# Run macOS defaults
bash ./install/macos.sh

# Dock settings
bash ./install/dock.sh

# Generate SSH
bash ./install/ssh.sh

# Set hostname
bash ./install/hostname.sh

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
