echo "Install system packages"

sudo dnf install -y dnf5
sudo dnf5 install -y helix
sudo dnf5 install -y alacritty
sudo dnf5 install -y htop 
sudo dnf5 install -y curl
sudo dnf5 install -y pipewire

sudo dnf5 install -y git
git config --global push.autoSetupRemote true
git config --global pull.rebase true
git config --global rebase.autoStash true

# Aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.a add
git config --global alias.c commit
git config --global alias.st status

git config --global alias.pu push
git config --global alias.pl pull

# sudo dnf install gnome-software 
# sudo dnf install gnome-terminal 
# sudo dnf install nautilus           
# sudo dnf install brave-browser
# sudo dnf install gnome-calculator
# sudo dnf install geary
# sudo dnf install gnome-calendar
# sudo dnf install gnome-clocks
# sudo dnf install rhythmbox
# sudo dnf install gedit
# sudo dnf install libreoffice
# sudo dnf install gnome-system-monitor
# sudo dnf install wget
# sudo dnf install curl
