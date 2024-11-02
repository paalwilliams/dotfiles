# Stow - symlink dotfiles
mkdir -p ~/.config
mkdir -p $HOME/.config/fish

stow nvim fish karabiner alacritty  --target=$HOME/.config
