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
echo "=> omakub is for fresh Fedora 41+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

# Update system and install Git
sudo dnf update -y >/dev/null
sudo dnf install -y git >/dev/null

echo "Cloning omakub..."
rm -rf ~/.local/share/omakub
git clone https://github.com/hangodek/omakub.git ~/.local/share/omakub >/dev/null

# Checkout a specific branch or reference if provided
if [[ -n "$omakub_REF" ]]; then
	cd ~/.local/share/omakub
	git fetch origin "$omakub_REF" && git checkout "$omakub_REF"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub/install.sh