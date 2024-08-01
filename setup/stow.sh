# Stow - symlink dotfiles
mkdir -p ~/.config
stow nvim --target=$HOME/.config
stow fish --target=$HOME/.config
stow kitty --target=$HOME/.config
stow karabiner --target=$HOME/.config
stow alacritty --target=$HOME/.config
 
