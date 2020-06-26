#!/bin/env bash

# Get parameters
mPath="$1"

# Restore configuration file
cp -rf "$mPath/xprofile/.xprofile"        "$HOME/"
cp -rf "$mPath/xprofile/.pam_environment" "$HOME/"
