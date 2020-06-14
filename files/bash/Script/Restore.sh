#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
cp -rf "$mPath/bash/.bash_logout"  "$HOME/"
cp -rf "$mPath/bash/.bash_profile" "$HOME/"
cp -rf "$mPath/bash/.bashrc"       "$HOME/"
