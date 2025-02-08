# Pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

# Remove fish greeting
set fish_greeting

status --is-interactive; and source (rbenv init -|psub)

export GPG_TTY=$(tty)

# Custom Aliases

alias cls="clear"

eval "$(/opt/homebrew/bin/brew shellenv)"

pyenv init - | source
zoxide init fish | source

source "$HOME/.cargo/env.fish"

source "$HOME/export-esp.sh"

#
fortune | cowsay -t | lolcat

# Doctolib stuff here

#source <(yak completion fish | psub)

# Doctlib stuff here
