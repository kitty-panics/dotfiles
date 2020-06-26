#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/i3status"
cp -rf "$mPath/i3status/i3status.conf" "$HOME/.config/i3status/"
