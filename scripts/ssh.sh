#!/bin/bash
#
# Generate SSH

source ./scripts/utils.sh

echo_info "Generating SSH key..."

ssh-keygen -q -t ed25519 -o -a 100 -C "$SSH_EMAIL"
touch ~/.ssh/config
echo -e "Host *\n UseKeychain yes\n AddKeysToAgent yes" >> ~/.ssh/config
echo -e " IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
ssh-add -K ~/.ssh/id_ed25519
echo_warning "Use copyssh command to copy the SSH key to the clipboard."

# Finish
echo_success "Generated SSH key."
