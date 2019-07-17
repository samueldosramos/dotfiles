#!/bin/bash
#
# npm packages
# Add or exclude packages before installation

source ./install/utils.sh
keep_sudo_alive

if which node &> /dev/null; then
  brew install node
fi

# Packages
npm install -g create-react-app
npm install -g create-react-native-app
npm install -g eslint
npm install -g gulp-cli
npm install -g sass
npm install -g typescript
npm install -g tslint

# Finish
e_success "Finished npm packages settings."
