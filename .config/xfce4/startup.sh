#!/bin/bash  

# https://mreq.eu/2013/06/window-snapping-via-wmctrl/
# https://askubuntu.com/questions/959871/desktop-environment-that-enables-split-screen-shortcut

alacritty &
spotify &
slack &
strawberry &
anki &
brave &

sleep 10

# 2100, not 2160, in order to compensate for the px of the taskbar.
wmctrl -r "Alacritty" -t 1 & wmctrl -r "Alacritty" -e 0,0,-1,1920,2100 &
wmctrl -r "Anki" -t 2 & wmctrl -r "Anki" -e 0,0,-1,1920,2100 &
wmctrl -r "Strawberry" -t 2 & wmctrl -r "Strawberry" -e 0,1920,-1,1920,2100 &
wmctrl -r "Slack" -t 0 &  wmctrl -r "Slack" -e 0,0,-1,1920,2100 &
wmctrl -r "Spotify" -t 0 & wmctrl -r "Discord" -e 0,1920,-1,1920,2100 &
