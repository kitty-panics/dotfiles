#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
#cp -rf "$mPath/zsh/.zprofile" "$HOME/"
cp -rf "$mPath/zsh/.zshrc"    "$HOME/"

# Other configurations
mkdir -p "$HOME/.local/bin"
mkdir -p "$HOME/.node_modules/bin"
mkdir -p "$HOME/.node_modules/lib"
