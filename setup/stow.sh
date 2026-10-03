# Stow - symlink dotfiles
mkdir -p ~/.config
mkdir -p $HOME/.config/fish

stow nvim fish karabiner alacritty  --target=$HOME/.config

# Claude Code: settings and status line live in ~/.claude, not ~/.config
mkdir -p $HOME/.claude
stow claude --target=$HOME/.claude
