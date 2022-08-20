# Skippy-Fedora-36

## Prerequisites
Install Fedora 36 Server 

> https://getfedora.org/en/server/download/

Run the live image from a bootable USB select a installation source and create a wheelhouse user then select the following options in "Software Selection":
> - Fedora Custom Operating System

and the following sub-options
> - Standard
> - (if on a vitrtual machine) Guest Additions

upon first boot install git and nano with the following command
> sudo dnf install git nano

### Optimising DNF

Before starting the install it is a good idea to configure dnf (the package manager of Fedora) to speed up the process

Edit the following file configuration with the following:

> sudo dnf install nano
> sudo nano /etc/dnf/dnf.conf

Write the following at the bottom of the file

> max_parallel_downloads=10
> fastestmirror=True
> deltarpm=1

Save the file

### Upgrading To Fedora 36 Server From An Older Version

Please refer to this guide to upgrade to Fedora 36 (server) before going any further in this guide 
> https://docs.fedoraproject.org/en-US/quick-docs/dnf-system-upgrade/#sect-performing-system-upgrade

Typically run the following: 
> sudo dnf upgrade --refresh
> sudo dnf autoremove
> sudo dnf install dnf-plugin-system-upgrade
> sudo dnf system-upgrade download --releasever=36
> sudo dnf system-upgrade reboot

## Running The Script For Skippy Gnome Fedora 36
Boot up Fedora Server and run the following commands

> sudo dnf install git
> git clone https://github.com/Steelstone3/Skippy-Fedora-36.git
> cd Skippy-Fedora-36
> bash skippy_gnome_fedora_36.sh

The script will then install the applications for "Skippy Gnome Fedora 36"

## Configuration For Skippy Gnome Fedora 36
Refer to this README.md for reference

In order to get a working system the following files will need to be altered:

### Setup xinitrc

Create a file called .xinitrc in the home folder

> touch ~/.xinitrc

Then add the following line to run the graphical shell

> exec /usr/bin/gnome-session ~/.xinitrc

This will create a symlink to run the gnome shell on boot

### Optimisations

#### Wayland
There are some optimisations that can be made.

Wayland on Gnome works in cases of Intel or AMD graphics and can be enabled with the following:

> sudo nano /etc/gdm/custom.conf

Find this line "#WaylandEnable=false" under [daemon] within the file and change it to:

> WaylandEnable=true

Save the file

#### Mitigations Performance Boost

Follow this guide with caution https://christitus.com/speedup-linux/

Within /etc/default/grub change GRUB_CMDLINE_LINUX="rhgb quiet to:

> sudo nano /etc/default/grub
> GRUB_CMDLINE_LINUX="rhgb quiet mitigations=off"

Save the file
