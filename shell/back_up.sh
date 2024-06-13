#!/bin/bash

back_up_dir_path="/home/ahmed/repos/config-files"

echo "Copying I3 File"
cp -r ~/.config/i3/ $back_up_dir_path

echo "Copying Alacritty Files"
cp -r ~/.config/alacritty/ $back_up_dir_path

echo "Copying Rofi Files"
cp -r ~/.config/rofi/ $back_up_dir_path

echo "Copying Neovim Files"
cp -r ~/.config/nvim/ $back_up_dir_path

echo "Copying Picom File"
cp -r ~/.config/picom/ $back_up_dir_path

echo "Copying Polybar Files"
cp -r ~/.config/polybar/ $back_up_dir_path

echo "Copying Redshift File"
cp -r ~/.config/redshift $back_up_dir_path

echo "Copying Shell Scripts Files"
cp -r ~/shell $back_up_dir_path

echo "Creating Bash Directory"
mkdir $back_up_dir_path/bash

echo "Copying All Bash Files"
cp -r ~/.bash* $back_up_dir_path/bash

echo "Copying .Inputrc File"
cp -r ~/.inputrc $back_up_dir_path/bash

echo "Copying Backgrounds"
cp -r /usr/share/backgrounds/ $back_up_dir_path

echo "Copying Lf Files"
cp -r ~/.config/lf $back_up_dir_path

echo "Creating VSCode Directory"
mkdir -p $back_up_dir_path/Code/User

vs_code_files="/home/ahmed/.config/Code/User"

#echo "Copying VS Code Files"
#cp -r $vs_code_files/snippets $back_up_dir_path/Code/User
#cp -r $vs_code_files/keybindings.json $back_up_dir_path/Code/User
#cp -r $vs_code_files/settings.json $back_up_dir_path/Code/User


current_date=$(date +%Y-%m-%d)
USERNAME="AhmedMohamed05"

echo "Changing Directory To The Repo"
cd ~/repos/config-files


lsd -l

git add . 
git commit -m "$current_date"
git push origin main 
