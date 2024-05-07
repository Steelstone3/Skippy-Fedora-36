echo "Install graphical enviroment packages"

sudo dnf5 install -y @minimal
sudo dnf5 install -y @base-x 
sudo dnf5 install -y @multimedia 
sudo dnf5 install -y @standard

sudo dnf5 install -y lightdm
sudo dnf5 install -y cinnamon