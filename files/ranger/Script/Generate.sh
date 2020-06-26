#!/bin/env bash

#
# Update ranger_devicons Plugin
#

Update_RangerDevicons() {
    git clone --depth=1 "https://github.com/alexanderjeurissen/ranger_devicons"
    mkdir -p "../profile/plugins"
    cp -rf "ranger_devicons/__init__.py" "../profile/plugins/"
    cp -rf "ranger_devicons/devicons.py" "../profile/plugins/"
    rm -rf "ranger_devicons"
}

Update_RangerDevicons
