# Pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

# Remove fish greeting
set fish_greeting

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH 

status --is-interactive; and source (rbenv init -|psub)

# Custom Aliases

alias cls="clear"

eval "$(/opt/homebrew/bin/brew shellenv)"

pyenv init - | source
zoxide init fish | source

#
fortune | cowsay -t
