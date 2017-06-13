#!/bin/bash

DOTFILES_DIRECTORY="${HOME}/.dotfiles"
DOTFILES_TARBALL_PATH="https://github.com/samuelramox/dotfiles/tarball/master"
#DOTFILES_GIT_REMOTE="git@github.com:samuelramox/dotfiles.git"

# If missing, download and extract the dotfiles repository
if [[ ! -d ${DOTFILES_DIRECTORY} ]]; then
    printf "$(tput setaf 7)Downloading dotfiles...\033[m\n"
    mkdir ${DOTFILES_DIRECTORY}
    # Get the tarball
    curl -fsSLo ${HOME}/dotfiles.tar.gz ${DOTFILES_TARBALL_PATH}
    # Extract to the dotfiles directory
    tar -zxf ${HOME}/dotfiles.tar.gz --strip-components 1 -C ${DOTFILES_DIRECTORY}
    # Remove the tarball
    rm -rf ${HOME}/dotfiles.tar.gz
fi

cd ${DOTFILES_DIRECTORY}

source ./install/utils.sh

# Before relying on Homebrew, check that packages can be compiled
if ! type_exists 'gcc'; then
    e_error "The XCode Command Line Tools must be installed first."
    e_header "Installing XCode Command Line Tools..."
    xcode-select --install
    e_success "XCode Command Line Tools install complete!"
fi

#Install packages and Apps
./install/brew.sh

link() {
    # Force create/replace the symlink.
    ln -fs "${DOTFILES_DIRECTORY}/${1}" "${HOME}/${2}"
}

mirrorfiles() {
    # Create the necessary symbolic links between the `.dotfiles` and `HOME`
    # directory. The `bash_profile` sources other files directly from the
    # `.dotfiles` repository.
    link ".alias"         ".alias"
    link ".bash_profile"  ".bash_profile"
    link ".functions"     ".functions"
    link ".gitconfig"     ".gitconfig"
    link ".gitignore"     ".gitignore"
    link ".macos"         ".macos"
    link ".inputrc"       ".inputrc"

    e_success "Dotfiles update complete!"
}

# Ask before potentially overwriting files
seek_confirmation "Warning: This step may overwrite your existing dotfiles."

if is_confirmed; then
    mirrorfiles
    source ${HOME}/.bash_profile
else
    printf "Aborting...\n"
    exit 1
fi

# Ask before potentially overwriting macOS defaults
seek_confirmation "Warning: This step may modify your macOS system defaults."

if is_confirmed; then
    bash ./macos
    e_success "macOS settings updated! You may need to restart."
else
    printf "Skipped macOS settings update.\n"
fi

# Ask before potentially overwriting dock defaults
seek_confirmation "Warning: This step may modify your dock system defaults."

if is_confirmed; then
    bash ./install/dock.sh
    e_success "Dock settings updated!"
else
    printf "Skipped dock settings update.\n"
fi

# Ask before potentially overwriting VSCode
seek_confirmation "Warning: This step may modify your VSCode configs."

if is_confirmed; then
    bash ./install/vscode.sh
    e_success "VSCode settings updated!"
else
    printf "Skipped VSCode settings update.\n"
fi
