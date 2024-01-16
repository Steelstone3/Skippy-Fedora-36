sudo dnf5 install -y @virtualization
sudo dnf5 install libvirt -y
sudo dnf5 install virt-install -y
sudo dnf5 install gnome-boxes

# Resizing guide
# qemu-img info Fedora-Server-KVM-39-1.5.x86_64.qcow2
# qemu-img resize disk.qcow2 100G
# qemu-img resize disk.qcow2 +20G

# Reclaim space when guest is off
# virt-sparsify --in-place Fedora-Server-KVM-39-1.5.x86_64.qcow2