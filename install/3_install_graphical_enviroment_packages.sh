echo "Install graphical enviroment packages"

sudo dnf5 install -y @minimal
sudo dnf5 install -y @base-x
sudo dnf5 install -y @multimedia
sudo dnf5 install -y @standard
sudo dnf5 install -y @hardware-support
sudo dnf5 install -y @networkmanager-submodules
sudo dnf5 install -y @base-graphical
# sudo dnf5 install -y @core
# sudo dnf5 install -y @container-management
# sudo dnf5 install -y @anaconda-tools
# sudo dnf5 install -y @printing
# sudo dnf5 install -y @fonts

sudo dnf5 install -y lightdm
sudo dnf5 install -y cinnamon
# sudo dnf5 copr enable ryanabx/cosmic-epoch
# sudo dnf5 install -y cosmic-desktop

sudo dnf5 group list --hidden | less