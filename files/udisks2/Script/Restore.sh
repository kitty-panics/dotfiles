#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/udisks2/99-udisks2.rules" "/etc/udev/rules.d/"
sudo cp -rf "$mPath/udisks2/media.conf"       "/etc/tmpfiles.d/"
