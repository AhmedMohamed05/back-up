#!/bin/bash

back_up_dir_path="/home/ahmed/repos/config-files"

cp -vr ~/.config/i3/ $back_up_dir_path
cp -vr ~/.config/alacritty/ $back_up_dir_path
cp -vr ~/.config/rofi/ $back_up_dir_path
cp -vr ~/.config/nvim/ $back_up_dir_path
cp -vr ~/.config/picom/ $back_up_dir_path
cp -vr ~/.config/polybar/ $back_up_dir_path
cp -vr ~/.config/redshift $back_up_dir_path
cp -vr ~/shell $back_up_dir_path

mkdir $back_up_dir_path/bash
cp -vr ~/.bash* $back_up_dir_path/bash
cp -vr ~/.inputrc $back_up_dir_path/bash
cp -vr /usr/share/backgrounds/ $back_up_dir_path
cp -v ~/.config/lf $back_up_dir_path

mkdir -p $back_up_dir_path
cp -v ~/.config/Code/User/snippets $back_up_dir_path/Code/User

clear

current_date=$(date +%Y-%m-%d)
USERNAME="AhmedMohamed05"
cd ~/repos/config-files

lsd -la 

git add . 
git commit -m "$current_date"
git push origin main 
