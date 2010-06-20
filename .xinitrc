#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Use this for the 105-key Apple keyboard.
# Need to do this before xmodmap.
# setxkbmap -verbose 10 -model pc105

# merge in defaults and keymaps

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

# Stop touchpad while typing
syndaemon -i 0.2 -d -K

# Disable terminal bell
xset -b

# Set DWM status bar
$HOME/.dwm_statusbar &

# Start WM
dwm;
