cd
echo "Configuring DNF"
sudo echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
sudo echo "fastestmirror=True" >> /etc/dnf/dnf.conf
sudo echo "deltarpm=1" >> /etc/dnf/dnf.conf

echo "Update system"
sudo dnf upgrade --refresh
sudo dnf autoremove
sudo dnf install dnf-plugins-core dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=36

echo "Install system sofware"
sudo dnf install gdm git vim htop pipewire

echo "Setup repositories"
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

echo "Install graphical enviroment"
sudo dnf install @base-x gnome-shell

echo "Install applications"
sudo dnf install gnome-software gnome-terminal nautilus brave-browser gnome-calculator geary gnome-calendar rhythmbox

echo "Enable services"
sudo systemctl enable gdm.service NetworkManager
sudo systemctl set-default graphical.target
touch ~/.xinitrc
echo "exec /usr/bin/gnome-session" >> ~/.xinitrc
echo "WaylandEnable=true" >> /etc/gdm/custom.conf # Under [daemon]
