#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo mkdir -p "/etc/systemd/system/docker.service.d"
sudo cp -rf "$mPath/docker/proxy.conf" "/etc/systemd/system/docker.service.d/"
sudo systemctl daemon-reload
sudo systemctl restart docker.service
