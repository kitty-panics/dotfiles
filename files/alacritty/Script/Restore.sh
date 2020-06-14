#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/alacritty"
cp -rf "$mPath/alacritty/alacritty.yml" "$HOME/.config/alacritty/"
