#!/bin/bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/sudo/sudoers" "/etc/"
