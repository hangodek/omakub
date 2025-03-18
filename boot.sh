#!/bin/bash
set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Omakora is for fresh Fedora 41+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

# Update system and install Git
sudo dnf update -y >/dev/null
sudo dnf install -y git >/dev/null

echo "Cloning Omakora..."
rm -rf ~/.local/share/omakora
git clone https://github.com/hangodek/omakora.git ~/.local/share/omakora >/dev/null

# Checkout a specific branch or reference if provided
if [[ -n "$OMAKORA_REF" ]]; then
	cd ~/.local/share/omakora
	git fetch origin "$OMAKORA_REF" && git checkout "$OMAKORA_REF"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakora/install.sh