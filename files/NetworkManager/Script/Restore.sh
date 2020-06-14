#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/NetworkManager/no-systemd-resolved.conf" "/etc/NetworkManager/conf.d/"
