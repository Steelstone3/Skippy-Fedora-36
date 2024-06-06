# Skippy-Fedora-40

## Prerequisites

### Install Fedora 40 Server

> <https://getfedora.org/en/server/download/>

Run the live image from a bootable USB select a installation source and create a wheelhouse user then select the following options in "Software Selection":

> - Fedora Custom Operating System

and the following sub-options

> - Minimal
>
> - (if on a vitrtual machine) Guest Additions

### First Boot

Upon first boot install git, dnf5 and helix with the following command

> sudo dnf install git hx dnf5

### Clone The Repository

> git clone <https://github.com/Steelstone3/Skippy-Fedora.git>
>
> git checkout fedora-40-base

### Upgrading To Fedora Server From An Older Version

Please refer to this guide to upgrade Fedora (server) before going any further in this guide
> <https://docs.fedoraproject.org/en-US/quick-docs/dnf-system-upgrade/#sect-performing-system-upgrade>

## Installation

> Install at your own risk. Please use good opsec practises and check each bash script before installing on a system.

Run the following:

> cd ./Skippy-Fedora/install
>
> bash install_all.sh
>
> bash 6_setup_xinitrc.sh
>
> bash 7_setup_services.sh

Ensure steps 2 to 5 scripts have ran and successfully installed everything before running steps 6 and 7.
