cd
echo "Configuring DNF"
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=True" >> etc/dnf/dnf.conf

echo "Updating system"
sudo dnf -y update

echo "Installing log in manager"
sudo dnf -y install lightdm
sudo systemctl enable lightdm
sudo systemctl set-defaul graphical.target

echo "Installing desktop enviroment"
sudo dnf install cinnamon cinnamon-control-center cinnamon-screensaver
# sudo dnf group install "Cinnamon Desktop"
# sudo dnf group install "base-x"
# sudo dnf group install "Cinnamon"
# sudo dnf group install "Core"
# sudo dnf group install "Dial-up Networking Support"
# sudo dnf group install "Fonts"
# sudo dnf group install "Guest Desktop Agents"
# sudo dnf group install "Hardware Support"
# sudo dnf group install "Input Methods"
# sudo dnf group install "Multimedia"
# sudo dnf group install "Common NetworkManager Submodules"
# sudo dnf group install "Printing Support"
# sudo dnf group install "Standard"

echo "exec /usr/bin/cinnamon-session" >> ~/.xinitrc

echo "Install browser"
sudo dnf -y install dnf-plugins-core
sudo dnf -y config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf -y install brave-browser