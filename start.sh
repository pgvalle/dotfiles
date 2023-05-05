#!/bin/sh

setxkbmap br

/usr/libexec/polkit-gnome-authentication-agent-1 &
picom -b
