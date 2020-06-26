#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
#cp -rf "$mPath/xorg-xrdb/.Xdefaults" "$HOME/"
#xrdb "$HOME/.Xdefaults"
cp -rf "$mPath/xorg-xrdb/.Xresources" "$HOME/"
#xrdb "$HOME/.Xresources"
