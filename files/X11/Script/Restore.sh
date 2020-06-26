#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/X11/10-nvidia-drm-outputclass.conf" "/etc/X11/xorg.conf.d/"
