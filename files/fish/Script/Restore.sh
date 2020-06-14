#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
rm -rf "$HOME/.config/fish"
rm -rf "$HOME/.local/share/fish/fish_history"
cp -rf "$mPath/fish/profile" "$HOME/.config/fish"
