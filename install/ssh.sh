#!/bin/bash
#
# Generate SSH

source ./install/utils.sh

ask "Please provide an email address: " && printf "\n"
ssh-keygen -t ed25519 -o -a 100 -C "$REPLY"
ssh-add -K ~/.ssh/id_ed25519
touch ~/.ssh/config
echo -e "Host *\n UseKeychain yes\n AddKeysToAgent yes\n" >> ~/.ssh/config
e_warning "After finishing the installation, use copyssh command to copy the SSH key to the clipboard."

# Finish
e_success "Generated SSH key."
