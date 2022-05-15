cd
echo "Configuring DNF"
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=True" >> etc/dnf/dnf.conf

echo "Updating system"
sudo dnf -y update

#echo "Installing log in manager"
#sudo dnf -y install lightdm

echo "Installing desktop enviroment"
sudo dnf -y group install "Cinnamon Desktop"

echo "exec /usr/bin/cinnamon-session" >> ~/.xinitrc

echo "Install browser"
sudo dnf -y install dnf-plugins-core
sudo dnf -y config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf -y install brave-browser