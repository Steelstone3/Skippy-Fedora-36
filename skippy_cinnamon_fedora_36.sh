echo "Installing log in manager"
sudo dnf install gdm
sudo dnf remove gnome-desktop3 gnome-desktop4
sudo systemctl enable gdm.service
sudo systemctl set-defaul graphical.target

echo "Installing desktop enviroment"
sudo dnf install cinnamon
sudo dnf group install "base-x"
sudo dnf group install "Multimedia"
sudo dnf remove gnome-calendar

echo "exec /usr/bin/cinnamon-session" >> ~/.xinitrc

echo "Install applications"
sudo dnf install git vim gnome-terminal gnome-calculator htop gedit geary rhythmbox shotwell

echo "Install browser"
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser
sudo dnf remove firefox

echo "Starting graphical enviroment"
sudo systemctl start gdm.service
