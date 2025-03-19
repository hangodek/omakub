# Install Flatpak and the GNOME Software Flatpak plugin
sudo dnf install -y flatpak
sudo dnf install -y gnome-software-plugin-flatpak

# Add the Flathub repository
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo