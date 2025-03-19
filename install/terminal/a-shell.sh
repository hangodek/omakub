# Configure the bash shell using omakora defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/omakora/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/omakora/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using omakora defaults
cp ~/.local/share/omakora/configs/inputrc ~/.inputrc
