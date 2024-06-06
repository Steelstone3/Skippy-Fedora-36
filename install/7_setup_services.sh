echo "Setup services"

# sudo systemctl enable lightdm NetworkManager
sudo systemctl enable NetworkManager
sudo systemctl enable cosmic-greeter

sudo systemctl set-default graphical.target