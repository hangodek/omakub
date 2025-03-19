cat <<EOF >~/.local/share/applications/Omakub.desktop
[Desktop Entry]
Version=1.0
Name=Omakub
Comment=Omakub Controls
Exec=alacritty --config-file /home/$USER/.local/share/omakora/defaults/alacritty/pane.toml --class=Omakub --title=Omakub -e omakora
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakora/applications/icons/Fedora.png
Categories=GTK;
StartupNotify=false
EOF
