#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/grub/grub" "/etc/default/"
sudo chmod 644 "/etc/default/grub"

sudo cp -rf "$mPath/grub/40_custom" "/etc/grub.d/"
sudo chmod 755 "/etc/grub.d/40_custom"

sudo grub-mkconfig -o /boot/grub/grub.cfg
