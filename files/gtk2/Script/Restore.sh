#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
cp -rf "$mPath/gtk2/.gtkrc-2.0" "$HOME/"
