#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Merge in system wide resources and keymaps
if [ -f $sysresources ];
then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ];
then
    xmodmap $sysmodmap
fi

# Merge in user resources and keymaps
if [ -f "$userresources" ];
then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ];
then
    xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ];
then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh;
    do
        [ -x "$f" ] && . "$f"
    done

    unset f
fi

setxkbmap -option caps:swapescape
exec bspwm
