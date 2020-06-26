#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/wpa_supplicant"
cp -rf "$mPath/wpa_supplicant/example.conf" "$HOME/.config/wpa_supplicant/"
