# Stow - symlink dotfiles
mkdir -p ~/.config
stow nvim --target=$HOME/.config
stow fish --target=$HOME/.config
ln -s ../fish/fish/config.fish $HOME/.config/fish/config.fish 
ln -s ../fish/fish/fish_variables $HOME/.config/fish/fish_variables

stow kitty --target=$HOME/.config
stow karabiner --target=$HOME/.config
stow alacritty --target=$HOME/.config
 
