#!/bin/bash
#
# Python setup
# Add or exclude packages before installation

source ./install/utils.sh

if which python3 &> /dev/null; then
  brew install python
fi

# Python 3 path
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Brew formulas
brew install black
brew install pyenv
brew install pipenv

# Pip packages
pip install pylint

# Finish
e_success "Finished npm packages settings."
