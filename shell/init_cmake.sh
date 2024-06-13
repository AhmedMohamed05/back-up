#!/bin/bash

current_dir=${PWD##*/}          # to assign to a variable

touch CMakeLists.txt

echo "cmake_minimum_required(VERSION 3.29)" >> CMakeLists.txt 

#read -p "Enter Projec Name: " PREOJECT_NAME
echo "project($current_dir)" >> CMakeLists.txt 

echo "add_executable(main main.cpp)" >> CMakeLists.txt


exit 0
