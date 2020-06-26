#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
rm -rf "$HOME/.config/mpv"
cp -rf "$mPath/mpv/profile" "$HOME/.config/mpv"
