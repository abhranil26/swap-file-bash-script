#!/bin/bash

# Create a swap file
fallocate -l 2G /myswap    # Adjust the size as needed (e.g., 1G for 1GB)

# Set permissions for the swap file
chmod 600 /myswap

# Format the file for use as swap
mkswap /myswap

# Activate the swap file
swapon /myswap

# Add swap file entry to /etc/fstab
echo "/myswap none swap sw 0 0" >> /etc/fstab

# Update swappiness in /etc/sysctl.conf
echo "vm.swappiness=10" >> /etc/sysctl.conf  # Change the value as desired

# Apply sysctl settings
sysctl -p

# Check if swap was successfully created
if swapon -s | grep -q '/myswap'; then
    echo "Swap file created and activated successfully."
else
    echo "Swap file creation and activation failed."
    echo "Rebooting the server may help."
fi
