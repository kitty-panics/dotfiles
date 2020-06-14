#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
rm -rf "$HOME/.config/qt5ct"
cp -rf "$mPath/qt5ct/profile" "$HOME/.config/qt5ct"

mkdir -p "$HOME/.config/qt5ct/colors"
mkdir -p "$HOME/.config/qt5ct/qss"
