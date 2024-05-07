echo "Setup services"

sudo systemctl enable lightdm NetworkManager
sudo systemctl set-default graphical.target