echo "Install graphical enviroment packages"

sudo dnf5 install -y @base-x 
sudo dnf5 install -y @multimedia 
sudo dnf5 install -y @standard
# sudo dnf5 install -y gnome-shell
# sudo dnf5 install -y gdm