echo "Install system sofware"
sudo dnf install gdm git vim htop pipewire

echo "Setup repositories"
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Install graphical enviroment"
sudo dnf install @base-x @multimedia @standard gnome-shell

echo "Install core applications"
sudo dnf install gnome-software gnome-terminal nautilus brave-browser gnome-calculator geary gnome-calendar gnome-clocks rhythmbox gedit libreoffice gnome-system-monitor wget curl

cd ~
git clone https://github.com/Steelstone3/Linux-Setup.git

echo "Enable services"
sudo systemctl enable gdm.service NetworkManager
sudo systemctl set-default graphical.target