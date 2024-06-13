#!/bin/bash

if [ ! -d build ]; then 
  mkdir build
fi

# Get the last part of the current directory's path
current_dir_name=$(basename "$(pwd)")

if [ ! "$current_dir_name" == "build" ]; then
  cd build 
fi

cmake ..

make 

if [ "$?" -eq 0 ]; then
  clear
  ./main
fi
exit 0
