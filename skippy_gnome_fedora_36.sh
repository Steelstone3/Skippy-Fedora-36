cd
echo "Configuring DNF"
sudo echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
sudo echo "fastestmirror=True" >> etc/dnf/dnf.conf

echo "Updating system"
sudo dnf update

echo "Install browser"
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

echo "Install applications"
sudo dnf install git vim gnome-terminal gnome-calculator htop nautilus geary

echo "Installing log in manager"
sudo dnf install gdm
sudo systemctl enable gdm.service
sudo systemctl set-defaul graphical.target

echo "Installing desktop enviroment"
sudo dnf install group "base-x"
sudo dnf remove gnome-calendar

echo "exec /usr/bin/gnome-session" >> ~/.xinitrc