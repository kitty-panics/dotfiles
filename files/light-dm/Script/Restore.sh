#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/light-dm/lightdm-gtk-greeter.conf" "/etc/lightdm/"
sudo cp -rf "$mPath/light-dm/lightdm.conf"             "/etc/lightdm/"

sudo cp -rf "$mPath/light-dm/display_setup.sh"         "/etc/lightdm/"
sudo chmod +x "/etc/light-dm/display_setup.sh"
