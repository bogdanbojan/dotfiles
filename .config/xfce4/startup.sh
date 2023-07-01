#!/bin/bash  

# https://mreq.eu/2013/06/window-snapping-via-wmctrl/
# https://askubuntu.com/questions/959871/desktop-environment-that-enables-split-screen-shortcut

alacritty &
signal-desktop -- &
spotify-launcher &
slack &
discord &

sleep 10

wmctrl -r "Alacritty" -t 1 & wmctrl -r "Alacritty" -e 0,0,-1,1920,2160 &
wmctrl -r "Signal" -t 2 & wmctrl -r "Signal" -e 0,0,-1,1920,2160 &
wmctrl -r "Spotify" -t 2 & wmctrl -r "Spotify" -e 0,1920,-1,1920,2160 &
wmctrl -r "Slack" -t 0 &  wmctrl -r "Slack" -e 0,0,-1,1920,2160 &
wmctrl -r "Discord" -t 0 & wmctrl -r "Discord" -e 0,1920,-1,1920,2160 &
