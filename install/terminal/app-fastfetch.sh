# Display system information in the terminal
sudo dnf install -y fastfetch

# Only attempt to set configuration if fastfetch is not already set
if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  # Use omakora fastfetch config
  mkdir -p ~/.config/fastfetch
  cp ~/.local/share/omakora/configs/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
fi
