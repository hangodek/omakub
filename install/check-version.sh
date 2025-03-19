#!/bin/bash

if [ ! -f /etc/os-release ]; then
  echo "$(tput setaf 1)Error: Unable to determine OS. /etc/os-release file not found."
  echo "Installation stopped."
  exit 1
fi

. /etc/os-release

# Check if running on Fedora 41 or higher
if [ "$ID" != "fedora" ] || [ $(echo "$VERSION_ID >= 41" | bc) != 1 ]; then
  echo "$(tput setaf 1)Error: OS requirement not met"
  echo "You are currently running: $ID $VERSION_ID"
  echo "OS required: Fedora 41 or higher"
  echo "Installation stopped."
  exit 1
fi

# Check if running on x86
ARCH=$(uname -m)
if [ "$ARCH" != "x86_64" ] && [ "$ARCH" != "i686" ]; then
  echo "$(tput setaf 1)Error: Unsupported architecture detected"
  echo "Current architecture: $ARCH"
  echo "This installation is only supported on x86 architectures (x86_64 or i686)."
  echo "Installation stopped."
  exit 1
fi

# Proceed with installation
echo "$(tput setaf 2)OS and architecture requirements met. Proceeding with installation...$(tput sgr0)"

# Install snap
sudo dnf install -y snapd

if [ ! -L /snap/snap ]; then
  sudo ln -s /var/lib/snapd/snap /snap
fi

sudo dnf install -y fuse squashfuse