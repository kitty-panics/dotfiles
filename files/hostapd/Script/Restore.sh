#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/hostapd"
cp -rf "$mPath/hostapd/ap.conf" "$HOME/.config/hostapd/"
