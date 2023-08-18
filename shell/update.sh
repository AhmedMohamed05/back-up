#!/bin/bash

#Update Pacman
echo "doas pacman -Sy"
doas pacman -Sy

echo "doas pacman -Syu"
doas pacman -Syu

echo "doas pacman -Syyu"
doas pacman -Syyu

#Update yay AUR Helper
echo "yay"
yay

echo "yay -Syu"
yay -Syu

echo "yay -Sy"
yay -Sy

echo "All done"
sleep 1
exit 1
