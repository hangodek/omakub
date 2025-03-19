# Needed for all installers
sudo dnf update -y
sudo dnf upgrade -y
sudo dnf install -y curl git unzip

# Run terminal installers
for installer in ~/.local/share/omakora/install/terminal/*.sh; do source $installer; done
