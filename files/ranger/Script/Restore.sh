#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
rm -rf "$HOME/.config/ranger"
cp -rf "$mPath/ranger/profile" "$HOME/.config/ranger"

chmod 755 "$HOME/.config/ranger/scope.sh"
chmod 755 "$HOME/.config/ranger/plugins/__init__.py"
chmod 755 "$HOME/.config/ranger/plugins/devicons.py"
