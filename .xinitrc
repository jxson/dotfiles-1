#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

usermodmap=$HOME/.Xmodmap
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

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi
# Disable terminal bell
xset -b

# Show the battery and time in the status bar
while true
do
  xsetroot -name "$(acpi | awk '{ print $3, $4 }' | sed s/","//g) | $(date +'%R %F')"
  sleep 10s
done &
