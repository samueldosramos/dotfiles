#!/bin/bash
# Add or exclude plugins before installation


# from `code --list-extensions`
modules="
    formulahendry.auto-rename-tag
    dzannotti.vscode-babel-coloring
    HookyQR.beautify
    ms-vscode.cpptools
    formulahendry.code-runner
    deerawan.vscode-dash
    dbaeumer.vscode-eslinct
    file-icons.file-icons
    codezombiech.gitignore
    Zignd.html-css-class-completion
    xabikos.javascriptsnippets
    slevesque.vscode-multiclip
    zhuangtongfa.material-theme
    coderfee.open-html-in-browser
    christian-kohler.path-intellisense
    rebornix.ruby
    robinbentley.sass-indented
"

for module in $modules; do
  code --install-extension "$module" || true
done

echo -e "\nSuccess! VSCode is set.\n"
