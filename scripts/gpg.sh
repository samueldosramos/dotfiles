#!/bin/bash
#
# GPG setup

source ./scripts/utils.sh

echo_info "Setting GPG key..."

brew install gnupg
brew install pinentry-mac

gpg --list-secret-keys
if [[ `uname -p` == "arm" ]]; then
  echo "pinentry-program /opt/homebrew/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
else
  echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
fi
gpgconf --kill gpg-agent

git config --global user.signingkey "$GPG_KEY"
git config --global commit.gpgsign true

echo_warning "Import your existing GPG key or create a new one after installation."
echo_warning "See https://help.github.com/pt/github/authenticating-to-github/managing-commit-signature-verification"

echo_success "GPG setup is finished."
