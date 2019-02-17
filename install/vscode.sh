#!/bin/bash
#
# VScode extensions install
# Add or exclude plugins before installation

source ./install/utils.sh

# from `code --list-extensions`
modules="
    formulahendry.auto-rename-tag
    coenraads.bracket-pair-colorizer-2
    deerawan.vscode-dash
    editorConfig.editorconfig
    dsznajder.es7-react-js-snippets
    dbaeumer.vscode-eslint
    file-icons.file-icons
    ecmel.vscode-html-css
    bradgashler.htmltagwrap
    kisstkondoros.vscode-gutter-preview
    orta.vscode-jest
    zhuangtongfa.material-theme
    esbenp.prettier-vscode
    ms-vscode.vscode-typescript-tslint-plugin
"

for module in $modules; do
  code --install-extension "$module" || true
done

e_success "Success! VSCode is set."
