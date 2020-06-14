#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
mkdir -p "$HOME/.config/cmus"
cp -rf "$mPath/cmus/rc" "$HOME/.config/cmus/"
rm -rf "$HOME/.config/cmus/cache"
echo "" > "$HOME/.config/cmus/lib.pl"
echo "" > "$HOME/.config/cmus/playlists/default"
