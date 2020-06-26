#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/tlp/tlp" "/etc/default/"
