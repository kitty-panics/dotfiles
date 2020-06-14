#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/aria2"
cp -rf "$mPath/aria2/aria2.conf" "$HOME/.config/aria2/"
mkdir -p "$HOME/Downloads/..aria2"
touch "$HOME/Downloads/..aria2/session"
