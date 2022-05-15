cd
echo "Configuring DNF"
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=True" >> etc/dnf/dnf.conf

echo "Updating system"
sudo dnf update

echo "Install browser"
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

echo "Install applications"
sudo dnf install vim

echo "Installing desktop enviroment"
sudo dnf install cinnamon
sudo dnf install group "base-x"

echo "exec /usr/bin/cinnamon-session" >> ~/.xinitrc

echo "Installing log in manager"
sudo dnf install gdm
sudo systemctl enable gdm
sudo systemctl set-defaul graphical.target

sudo systemctl disable sddm
sudo systemctl disable lightdm