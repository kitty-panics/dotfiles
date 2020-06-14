#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/sddm/Xsetup" "/usr/share/sddm/scripts/"
