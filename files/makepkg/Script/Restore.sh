#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/makepkg/git.sh" "/usr/share/makepkg/source/"
