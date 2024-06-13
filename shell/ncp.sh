#!/bin/bash

current_dir=${PWD##*/}

~/shell/./init_cmake.sh

touch main.cpp

echo -e "#include <iostream>" >> main.cpp
echo -e "using namespace std;\n" >> main.cpp
echo -e "int main(){" >> main.cpp
echo -e "cout << \"Hello World, !!!\\\n\";" >> main.cpp
echo -e "\nreturn 0;" >> main.cpp
echo -e "}" >> main.cpp

open="y"
read -p "Do Want To Open main.cpp With Nvim ?: [Y, n]: " open

if [ "$open" == "y" ]; then 
  nvim main.cpp
fi
