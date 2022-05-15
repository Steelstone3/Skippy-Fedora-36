cd
echo "Configuring DNF"
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=True" >> etc/dnf/dnf.conf

echo "Updating system"
sudo dnf update -y

echo "Creating configuration directory"
mkdir ~/.config
mkdir ~/.fonts

echo "Installing basic utilities"
sudo dnf install vim git htop curl -y
sudo dnf install arandr
xrandr -s 1920x1080

echo "Install browser"
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

echo "Installing log in manager"
sudo dnf install sddm -y

echo "Installing custom graphical enviroment"
sudo dnf install bspwm kitty picom polybar rofi sxhkd thunar nitrogen
sudo dnf install ~/Fedora-Titus/rpm-packages/ocs-url-3.1.0-1.fc20.x86_64.rpm

echo "Installing fonts and theming"
sudo dnf install fontawesome-fonts fontawesome-fonts-web
mv ~/Skippy-Fedora-36/dependencies/fonts/*.zip ~/.fonts
unzip ~/.fonts/FiraCode.zip
unzip ~/.fonts/Meslo.zip

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
.config/polybar/launch.sh

echo "Set wireless working"
ip a

echo "Change [module/eth] -> interface=enp5s0 to your interface"
vim ~/.config/polybar/config

echo "Restart system using shutdown -r now"