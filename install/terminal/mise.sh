# Install mise for managing multiple versions of languages. See https://mise.jdx.dev/
sudo dnf install -y gpg wget curl

# Add the mise repository
sudo dnf config-manager --add-repo https://mise.jdx.dev/rpm/mise.repo

# Install mise
sudo dnf install -y mise