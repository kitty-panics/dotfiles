#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/i3blocks"
cp -rf "$mPath/i3blocks/i3blocks.conf" "$HOME/.config/i3blocks/"
