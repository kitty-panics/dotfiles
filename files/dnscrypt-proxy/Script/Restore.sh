#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
sudo cp -rf "$mPath/dnscrypt-proxy/dnscrypt-proxy.toml" "/etc/dnscrypt-proxy/"
sudo chmod 644 "/etc/default/grub"
