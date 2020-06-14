#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Load additional configs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# Enable Chinese locale in Graphical Interface

export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
export LC_CTYPE=en_US.UTF-8

# Set environment variables for IM modules

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# Set network connection variable

#export proxy_address=127.0.0.1:1080
#export no_proxy_address="localhost,127.0.0.1,localaddress,.localdomain.com"
#export http_proxy="$proxy_address"
#export HTTP_PROXY="$proxy_address"
#export https_proxy="$proxy_address"
#export HTTPS_PROXY="$proxy_address"
#export ftp_proxy="$proxy_address"
#export FTP_PROXY="$proxy_address"
#export rsync_proxy="$proxy_address"
#export RSYNC_PROXY="$proxy_address"
#export no_proxy="$no_proxy_address"
#export NO_PROXY="$no_proxy_address"

# Troubleshooting "Nvidia - vulkan is not working and can not initialize"
export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/nvidia_icd.json"

# Configuration of Qt5 apps under environments other than KDE Plasma
export XDG_CURRENT_DESKTOP=GNOME
export QT_QPA_PLATFORMTHEME=qt5ct

# Using a GTK+ icon theme in Qt apps
#export DESKTOP_SESSION=gnome

# Activating the xmodmap custom table
xmodmap "$HOME/.Xmodmap"

# Configuration xrandr
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 125

# Starting i3wm
exec i3
