#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

# Caps -> Esc
# Must be before xmodmap
setxkbmap -option caps:escape

# Caps -> Ctrl
# setxkbmap -option ctrl:nocaps

# Bind volume and Fn keys
xbindkeys &

# Turn off trackpad while typing
# -i 2 sets the idle time to 2 seconds. The idle time specifies how many seconds to wait after the last key-press before enabling the touchpad again. 
# -t tells the daemon not to disable mouse movement when typing and only disable tapping and scrolling. 
# -k tells the daemon to ignore modifier keys when monitoring keyboard activity (e.g.: allows Ctrl+Left Click). 
# -d starts as a daemon, in the background. 
syndaemon -t -k -i 2 -d &

# Detect fat palms on the trackpad
synclient PalmDetect=1

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
