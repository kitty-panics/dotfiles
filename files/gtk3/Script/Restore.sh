#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/gtk-3.0"
cp -rf "$mPath/gtk3/settings.ini" "$HOME/.config/gtk-3.0/"
