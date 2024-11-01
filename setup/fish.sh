sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
chsh -s /opt/homebrew/bin/fish


# Install plugins from fish/fish_plugins
fisher update
