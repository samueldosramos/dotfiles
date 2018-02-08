#!/bin/bash
#
# Some functions used in install scripts


# Header logging
e_header() {
    printf "\n$(tput setaf 3)%s$(tput sgr0)\n" "$@"
}

# Success logging
e_success() {
    printf "\n$(tput setaf 2)✓ %s$(tput sgr0)\n" "$@"
}

# Error logging
e_error() {
    printf "\n$(tput setaf 1)x %s$(tput sgr0)\n" "$@"
}

# Warning logging
e_warning() {
    printf "\n$(tput setaf 136)! %s$(tput sgr0)\n" "$@"
}

# Ask for confirmation before proceeding
seek_confirmation() {
    printf "\n"
    e_warning "$@"
    read -p "Continue? (y/n) " -n 1
    printf "\n"
}

# Test whether the result of an 'ask' is a confirmation
is_confirmed() {
    if [[ "$REPLY" =~ ^[Yy]$ ]]; then
      return 0
    fi
    return 1
}


