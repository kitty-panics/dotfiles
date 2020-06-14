#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/i3"
cp -rf "$mPath/i3-gaps/config" "$HOME/.config/i3/"

# Other configurations
mkdir -p "$HOME/Backups"
mkdir -p "$HOME/Daily"
mkdir -p "$HOME/Documents"
mkdir -p "$HOME/Downloads"
mkdir -p "$HOME/Pictures"
