#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

# Caps -> Ctrl
# Must be before xmodmap
setxkbmap -option ctrl:nocaps

# Bind volume and Fn keys
xbindkeys &

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

# Disable terminal bell
xset -b

# Set DWM status bar
$HOME/.dwm_statusbar &

# Arrange screens
xrandr --output DVI-I-1 --left-of DVI-I-2

# Start WM
dwm;
