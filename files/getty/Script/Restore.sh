#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo sed --follow-symlinks -i "s/--noclear/--autologin $USER --noclear/" /etc/systemd/system/getty.target.wants/getty@tty1.service
