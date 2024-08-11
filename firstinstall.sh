#!/bin/bash

# Check if firewalld is installed
if pacman -Qq | grep -qw firewalld; then
    echo "firewalld is installed. Removing it..."
    sudo pacman -Rns --noconfirm firewalld
    echo "firewalld has been removed."
else
    echo "firewalld is not installed."
fi

# General section
echo "### General ###"

# Install general packages all at once
echo "Installing general packages..."
yay -Sy appimagelauncher-bin docker firefox gnome-boxes iptvnator protonup-qt steam stremio timeshift timeshift-autosnap vesktop-bin vmware-workstation vscodium-bin distrobox
echo "General packages have been installed."

# QEMU section
echo "### QEMU ###"

# Install QEMU-related packages all at once
echo "Installing QEMU-related packages..."
yay -Sy bridge-utils dnsmasq ebtables iptables libguestfs openbsd-netcat qemu virt-manager virt-viewer vde2
echo "QEMU-related packages have been installed."

# NVIDIA section under QEMU
echo "### NVIDIA ###"

# Install NVIDIA-related packages all at once
echo "Installing NVIDIA-related packages..."
yay -Sy nvidia-dkms nvidia-prime
echo "NVIDIA-related packages have been installed."

# Firewall section under NVIDIA
echo "### Firewall ###"
echo "Installing firewall-related packages..."
yay -Sy ufw gufw
echo "Firewall-related packages have been installed."

# GNOME section
echo "### GNOME ###"

# Install GNOME-related packages all at once
echo "Installing GNOME-related packages..."
yay -Sy gdm-settings gnome-software gnome-browser-connector
echo "GNOME-related packages have been installed."

# Kernel section
echo "### Kernel ###"

# Install kernel packages all at once
echo "Installing kernel packages..."
yay -Sy linux-zen linux-zen-headers
echo "Kernel packages have been installed."

# Start Service section
echo "### Start Service ###"
echo "Enabling and starting ufw service..."
sudo systemctl enable --now ufw
echo "ufw service has been started."

# Open websites after installation
echo "Opening setup guides..."
xdg-open "https://christitus.com/setup-qemu-in-archlinux/"
xdg-open "https://techhut.tv/windows-11-vmware-guide-linux/"
xdg-open "https://docs.docker.com/engine/install/linux-postinstall/"
