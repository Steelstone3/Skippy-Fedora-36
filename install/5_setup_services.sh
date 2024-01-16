echo "Setup services"

sudo systemctl enable gdm.service NetworkManager
sudo systemctl set-default graphical.target