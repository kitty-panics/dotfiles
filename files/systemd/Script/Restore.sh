#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/systemd/99-swappiness.conf" "/etc/sysctl.d/"

sudo cp -rf "$mPath/systemd/journald.conf" "/etc/systemd/"
sudo cp -rf "$mPath/systemd/system.conf"   "/etc/systemd/"
