#!/bin/bash
# Add or exclude plugins before installation


# from `code --list-extensions`
modules="
    dracula-theme.theme-dracula
    file-icons.file-icons
    abusaidm.html-snippets
    dbaeumer.vscode-eslint
    steve8708.align
    christian-kohler.path-intellisense
    coderfee.open-html-in-browser
    Zignd.html-css-class-completion
    slevesque.vscode-multiclip
    formulahendry.auto-rename-tag
    HookyQR.beautify
    robinbentley.sass-indented
    xabikos.javascriptsnippets
    dzannotti.vscode-babel-coloring
    formulahendry.code-runner
    ms-vscode.cpptools
    rebornix.ruby
    codezombiech.gitignore
    deerawan.vscode-dash
    zhuangtongfa.material-theme
"

for module in $modules; do
  code --install-extension "$module" || true
done

echo -e "\nSuccess! VSCode is set.\n"
