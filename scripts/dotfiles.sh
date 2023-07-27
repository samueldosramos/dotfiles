#!/bin/bash
#
# Install Oh My Zsh and set dotfiles
# Install dotfiles and configure git

source ./scripts/utils.sh

echo_info "Installing dotfiles..."

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install plugin zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Install plugin zsh-completions
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

# Install plugin fast-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

# Install Starship ZSH theme
# The minimal, blazing-fast, and infinitely customizable prompt for any shell!
# Check out https://starship.rs for more details
brew install starship
mkdir ${HOME}/.config
replace "./configs/starship.toml" ".config/starship.toml"

# Move permanent files to Home directory
replace "./configs/.gitignore_global" ".gitignore_global"

if [[ `uname -p` == "arm" ]]; then
  replace "./configs/.zshrc_silicon" ".zshrc"
else
  replace "./configs/.zshrc_intel" ".zshrc"
fi

# Git configs
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global credential.helper osxkeychain
git config --global core.excludesfile "~/.gitignore_global"
git config --global core.trustctime false
git config --global core.editor "code --wait"
git config --global diff.tool vscode
git config --global difftool.vscode.cmd 'code --wait --diff $LOCAL $REMOTE'
git config --global merge.tool vscode
git config --global mergetool.vscode.cmd 'code --wait $MERGED'
git config --global init.defaultBranch main
git config --global --add oh-my-zsh.hide-dirty 1
git config --global --add oh-my-zsh.hide-status 1

# Suppress the ‘Last Login’ on terminal launch
touch ~/.hushlogin

# Fix “zsh compinit: insecure directories” warnings
# See https://docs.brew.sh/Shell-Completion
chmod go-w "$(brew --prefix)/share"

# Finish
echo_success "Dotfiles update complete."
