echo "Setup services"

# sudo systemctl enable cosmic-greeter
sudo systemctl enable lightdm NetworkManager
sudo systemctl enable NetworkManager

sudo systemctl set-default graphical.target