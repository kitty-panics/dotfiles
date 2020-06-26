#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/neofetch"
cp -rf "$mPath/neofetch/config.conf" "$HOME/.config/neofetch/"
