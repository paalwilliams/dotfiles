# Stow - symlink dotfiles
mkdir -p ~/.config
stow nvim --target=$HOME/.config

mkdir -p $HOME/.config/fish
stow fish --target=$HOME/.config

stow karabiner --target=$HOME/.config
stow alacritty --target=$HOME/.config
 
