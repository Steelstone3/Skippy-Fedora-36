# Skippy-Fedora-39

## Prerequisites

### Install Fedora 39 Server

> <https://getfedora.org/en/server/download/>

Run the live image from a bootable USB select a installation source and create a wheelhouse user then select the following options in "Software Selection":

> - Fedora Custom Operating System

and the following sub-options

> - Minimal
>
> - (if on a vitrtual machine) Guest Additions

### First Boot

Upon first boot install git, dnf5 and helix with the following command

> sudo dnf install git helix dnf5

#### Optimising DNF

Before starting the install it is a good idea to configure dnf (the package manager of Fedora) to speed up the process

Edit the following file configuration with the following:

> sudo dnf install nano
>
> sudo nano /etc/dnf/dnf.conf

Write the following at the bottom of the file

> max_parallel_downloads=10
>
> fastestmirror=True

Save the file

### Clone The Repository

> git clone <https://github.com/Steelstone3/Skippy-Fedora.git>
>
> git checkout fedora-39-base

### Upgrading To Fedora 39 Server From An Older Version

Please refer to this guide to upgrade to Fedora 39 (server) before going any further in this guide
> <https://docs.fedoraproject.org/en-US/quick-docs/dnf-system-upgrade/#sect-performing-system-upgrade>

## Running The Script For Skippy Fedora 39

Prior to running the script please feel free to comment out (#) the Microsoft repository being imported under setup repositories and change/ comment out (#) to personal preference for "Install user specific applications" and "Install developer tools" sections

Additionally to run this on a virtual machine run

> bash 0_install_virtual_machine.sh

Boot up Fedora Server and run the following commands

> sudo dnf install git
>
> git clone <https://github.com/Steelstone3/Skippy-Fedora.git>
>
> cd Skippy-Fedora
>
> git checkout fedora-39-base
>
> bash 2 <tab>
>
> etc...
> 
> bash 7 <tab>

The script will then install the applications for "Skippy Fedora 39"

## Configuration For Skippy Fedora 39

Refer to this README.md for reference

In order to get a working system the following files will need to be altered:

### Setup xinitrc

Covered in 6_setup_xinitrc.sh

Create a file called .xinitrc in the home folder

> touch ~/.xinitrc

Then add the following line to run the graphical shell

> nano ~/.xinitrc
>
> exec cinnamon-session

This will create a symlink to run the gnome shell on boot

### Optimisations

#### Mitigations Performance Boost

Follow this guide with caution <https://christitus.com/speedup-linux/>

Within /etc/default/grub change GRUB_CMDLINE_LINUX="rhgb quiet to:

> sudo nano /etc/default/grub
>
> GRUB_CMDLINE_LINUX="rhgb quiet mitigations=off"

Save the file
