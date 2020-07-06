#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/sysctl.d/99-swappiness.conf" "/etc/sysctl.d/"
