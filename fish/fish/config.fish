set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# init zoxide 
zoxide init fish | source

# Custom Aliases

alias cls="clear"

# rbenv
status --is-interactive; and rbenv init - fish | source

eval "$(/opt/homebrew/bin/brew shellenv)"

pyenv init - | source
