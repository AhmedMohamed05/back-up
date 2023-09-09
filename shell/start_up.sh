#!/bin/bash



echo "Nitrogen"
nitrogen --restore #nitrogen

echo "picom"
picom --config ~/.config/picom/picom.conf #picom

echo "syncthing"
syncthing -no-browser -no-restart #Syncthing

echo "polybar"
~/.config/polybar/./start.sh #Polybar

echo "redshift"
~/.config/redshift/./start.sh #redshift

