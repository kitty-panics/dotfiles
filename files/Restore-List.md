# Restore-List

A list of software that lists recoverable keys.

## Use

Use this command to filter out the following list contents.

```Shell
ls -A | sed '/Restore-List.md/d'
```

## Available List

To configure which software to restore, simply add an asterisk before the line and vice versa.

```TEXT
alacritty
alsa
* aria2
bash
* chromium
cmus
* cursor-themes
dnscrypt-proxy
docker
fcitx5
fish
fontconfig
getty
grub
* gtk2
* gtk3
hostapd
hosts
* i3-gaps
i3blocks
i3status
* jetbrains
light-dm
makepkg
* mpv
* neofetch
NetworkManager
pacman
qt5ct
* ranger
redshift
sddm
sudo
sysctl.d
systemd
tlp
* tmux
udisks2
wpa_supplicant
X11
xorg-xinit
xorg-xmodmap
xorg-xrdb
* xprofile
* zsh
```
