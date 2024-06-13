#!/bin/bash

# Update Arch Linux system using pacman
doas pacman -Syu --noconfirm

# Update AUR packages using yay
sudo yay -Syu --noconfirm

