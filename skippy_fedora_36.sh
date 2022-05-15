cd
echo "Configuring DNF"
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=True" >> etc/dnf/dnf.conf

echo "Updating system"
sudo dnf -y update

echo "Install browser"
sudo dnf -y install dnf-plugins-core
sudo dnf -y config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf -y install brave-browser

echo "Install applications"

echo "Installing desktop enviroment"
sudo dnf install cinnamon

echo "exec /usr/bin/cinnamon-session" >> ~/.xinitrc

echo "Installing log in manager"
sudo dnf -y install lightdm
sudo systemctl enable lightdm
sudo systemctl set-defaul graphical.target

sudo systemctl disable sddm
sudo systemctl disable gdm

echo "Configuring Lightdm"
sudo vim /etc/lightdm/lightdm.conf