echo "Configuring DNF"
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=True" >> etc/dnf/dnf.conf

echo "Updating system"
sudo dnf update -y

echo "Creating configuration directory"
mkdir ~/.config

echo "Installing basic utilities"
sudo dnf install vim git htop -y
sudo dnf install xrandr
xrandr -s 1920x1080

echo "Installing log in manager"
sudo dnf install sddm -y

echo "Installing custom graphical enviroment"
sudo dnf install bspwm dconf-editor kitty picom polybar rofi sxhkd thunar nitrogen
sudo dnf install ~/Fedora-Titus/rpm-packages/ocs-url-3.1.0-1.fc20.x86_64.rpm

echo "Changing target from server to graphical"
sudo systemctl enable sddm
sudo systemctl set-defaul graphical.target

echo "Getting configurations"
git clone https://github.com/christitustech/fedora-titus

echo "Moving configuration files"
mv ~/Fedora-Titus/dotconfig/* ~/.config
mv ~/Fedora-Titus/.* ~

echo "Set Session=bspwn & User=<your username>"
sudo vim /etc/sddm.conf

echo "Restart system using shutdown -r now"