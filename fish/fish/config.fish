set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH 

status --is-interactive; and source (rbenv init -|psub)

# Custom Aliases

alias cls="clear"

eval "$(/opt/homebrew/bin/brew shellenv)"

zoxide init fish | source

pyenv init - | source
