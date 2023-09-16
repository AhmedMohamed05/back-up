#!/bin/bash

#Update Pacman
echo "doas pacman -Sy"
doas pacman -Sy
clear

echo "doas pacman -Syu"
doas pacman -Syu
clear

echo "doas pacman -Syyu"
doas pacman -Syyu
clear

#Update yay AUR Helper
echo "yay"
yay
clear

echo "yay -Syu"
doas yay -Syu
clear

echo "yay -Sy"
doas yay -Sy
clear

echo "All done"
sleep 1
exit 1
