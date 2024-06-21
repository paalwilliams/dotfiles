/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

curl https://get.volta.sh | bash

stow nvim --target=$HOME/.config
stow fish --target=$HOME/.config
stow kitty --target=$HOME/.config
stow karabiner --target=$HOME/.config
