#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
cp -rf "$mPath/redshift/redshift.conf" "$HOME/.config/redshift/"
