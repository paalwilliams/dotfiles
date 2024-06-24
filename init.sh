# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Node.JS
curl https://get.volta.sh | bash
volta install node
volta install node@20
volta install node@16

# Stow and dotfiles
brew install stow
mkdir -p ~/.config
stow nvim --target=$HOME/.config
stow fish --target=$HOME/.config
stow kitty --target=$HOME/.config
stow karabiner --target=$HOME/.config

# Nerd Font
brew install --cask font-hack-nerd-font

# Homebrew Packages 
brew install rectangle
brew install zoxide
brew install kitty

brew install neovim
brew install lazygit
brew install ripgrep
brew install fish

brew install visual-studio-code
brew install karabiner-elements
brew install alfred
brew install firefox
brew install --cask docker 

# Pyenv
brew install pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv install 3

# rbenv
brew install rbenv ruby-build
rbenv init

# Fish Setup
sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
chsh -s /opt/homebrew/bin/fish

