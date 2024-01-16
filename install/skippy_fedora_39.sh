echo "Install system sofware"
sudo dnf install gdm git vim htop pipewire
git config --global pull.rebase true
git config --global rebase.autoStash true


echo "Install graphical enviroment"
sudo dnf install @base-x @multimedia @standard gnome-shell

echo "Enable services"
sudo systemctl enable gdm.service NetworkManager
sudo systemctl set-default graphical.target

echo "Install applications"
cd ~
git clone https://github.com/Steelstone3/Linux-Setup.git