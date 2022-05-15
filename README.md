# Skippy-Fedora-36

## Prerequisites
Install Fedora 36 Server 

> https://getfedora.org/en/server/download/

Run the live image from a bootable USB select a installation source and create a wheelhouse user then select the following options in "Software Selection":
> - Fedora Custom Operating System

and the following sub-options
> - Standard
> - (if on a vitrtual machine) Guest Additions

## Running The Script
Boot up Fedora Server and run the following commands

> sudo dnf install git
> git clone https://github.com/Steelstone3/Skippy-Fedora-36.git
> cd Skippy-Fedora-36
> bash skippy_fedora_36.sh

The script will then start to setup "Skippy Fedora"

