#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

# Use this for the 105-key Apple keyboard.
# Need to do this before xmodmap.
# setxkbmap -verbose 10 -model pc105

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

# Arrange screens
xrandr --output DVI-I-0 --auto --primary --left-of DVI-I-1

# Show the time in the status bar
while true; do
  xsetroot -name "$( date +"%R %F" )"
  sleep 1m    # Update time every minute
done &


# Start WM
dwm;
