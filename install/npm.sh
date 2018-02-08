#!/bin/bash
# npm packages
# Add or exclude packages before installation

if which node &> /dev/null; then
  brew install node
fi

npm install -g create-react-app
npm install -g http-server
npm install -g gulp-cli
npm install -g @pingy/cli
npm install -g postcss-cli
npm install -g autoprefixer

#Finish
e_success "Finished the npm packages installation"
