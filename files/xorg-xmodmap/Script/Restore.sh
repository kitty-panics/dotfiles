#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
cp -rf "$mPath/xorg-xmodmap/.Xmodmap" "$HOME/"
xmodmap "$HOME/.Xmodmap"
