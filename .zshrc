# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# --------------------------- Paths ------------------------------------
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Homebrew path
export PATH="/opt/homebrew/bin:$PATH"

# curl path
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# Ruby path
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$(gem environment gemdir)/bin:$PATH"

# Support 256 colors path
export TERM="xterm-256color"

# ----------------------------- Plugins ---------------------------------------
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  asdf
  colored-man-pages
  extract
  fast-syntax-highlighting
  osx
  zsh-autosuggestions
  zsh-completions
  zsh_reload
)

# Homebrew Command Not Found
HB_CNF_HANDLER="/opt/homebrew/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
  source "$HB_CNF_HANDLER";
fi

# Homebrew Shell Completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

source $ZSH/oh-my-zsh.sh

# --------------------------- Aliases ----------------------------------
# Update Homebrew and Cask formulaes
# Include -f to update apps that are marked as latest
alias update="brew update && brew upgrade && brew cu --all"

# Cleanup Homebrew and Cask cache
alias cleanup="brew cleanup"

# Update macOS using Command Line Software Update Tool
alias macupdate="sudo softwareupdate -ia"

# List npm packages installed globally
alias npmlist="npm list -g --depth=0"

# Undo the last commit
alias uncommit="git reset HEAD~1"

# Copy SSH
alias copyssh="pbcopy < ~/.ssh/id_ed25519.pub | echo '=> Public key copied to pasteboard.'"

# Open .gitconfig in VSCode
alias gitcfg="code ~/.gitconfig"

# Open .zshrc in VSCode
alias zshcfg="code ~/.zshrc"

# ------------------------------ Theme ----------------------------------------
# Starship ZSH theme
# The minimal, blazing-fast, and infinitely customizable prompt for any shell!
# Check out https://starship.rs for more details
ZSH_THEME=""
eval "$(starship init zsh)"

# Starship path to load .config
export PATH="/opt/homebrew/opt/starship/bin:$PATH"
