#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/fontconfig"
sudo chattr -i "$HOME/.config/fontconfig/fonts.conf"
cp -rf "$mPath/fontconfig/fonts.conf" "$HOME/.config/fontconfig/"
sudo chattr +i "$HOME/.config/fontconfig/fonts.conf"
fc-cache --force
