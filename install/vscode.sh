#!/bin/bash

ln -sf "$DOTFILES/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
ln -sf "$DOTFILES/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"

# from `code --list-extensions`
modules="
    dracula-theme.theme-dracula
    PKief.material-icon-theme
    abusaidm.html-snippets
    dbaeumer.vscode-eslint
    steve8708.align
    christian-kohler.path-intellisense
    coderfee.open-html-in-browser
    Zignd.html-css-class-completion
    slevesque.vscode-multiclip
    formulahendry.auto-rename-tag
"

for module in $modules; do
  code --install-extension "$module" || true
done
