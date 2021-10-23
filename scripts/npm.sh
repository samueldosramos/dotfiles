#!/bin/bash
#
# npm packages
# Add or exclude packages before installation

source ./scripts/utils.sh
. $HOME/.asdf/asdf.sh

echo_info "Installing npm packages..."

if which node &> /dev/null; then
  brew install node
fi

asdf plugin-add nodejs
asdf global nodejs system

# npm packages
PACKAGES=(
  create-react-app
  create-react-native-app
  eslint
  eslint-plugin-mdx
  gulp-cli
  prettier
  sass
  typescript
  yalc
)

for package in ${PACKAGES[@]}
do
  npm install -g $package
done

# Finish
echo_success "Finished npm packages settings."
