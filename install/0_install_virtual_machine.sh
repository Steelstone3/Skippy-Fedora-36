sudo dnf5 install -y @virtualization
sudo dnf5 install libvirt -y
sudo dnf5 install virt-install -y
sudo dnf5 install gnome-boxes

# flatpak install boxes

# Resizing guide
# qemu-img info Fedora-Server-KVM-39-1.5.x86_64.qcow2
# qemu-img resize disk.qcow2 100G
# qemu-img resize disk.qcow2 +20G

# Reclaim space when guest is off
# virt-sparsify --in-place Fedora-Server-KVM-39-1.5.x86_64.qcow2

# Resize the LVM

# Create a partition

# lsblk
# sudo fdisk /dev/vda
# n
# p
# partition number: default
# first sector: default
# last sector: default
# t
# partition 4 (default)
# L
# 44
# w

# Create phyical volume
# sudo pvcreate /dev/vda4

# Find the volume group name
# sudo vgdisplay
# sysvg: volume group name

# Extend the volume group
# sudo vgextend sysvg /dev/vda4
# sudo vgdisplay
# Free PE / Size 23807 / <93.00GiB

# Extend logical volume
# sudo lvdisplay
# sudo pvscan

# sudo lvextend -L+5G /dev/sysvg/root
# sudo lvdisplay: LV Size: 11GB
# sudo vgdisplay: Free PE / Size: 88GB
# xfs_growfs /dev/sysvg/root
# resize2fs /dev/sysvg/root (for ext4)