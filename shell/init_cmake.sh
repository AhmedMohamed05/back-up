#!/bin/bash

current_dir=${PWD##*/}          # to assign to a variable
#current_dir=${result:-/}        # to correct for the case where PWD=/

touch CMakeLists.txt

echo "cmake_minimum_required(VERSION 3.0)" >> CMakeLists.txt 

#read -p "Enter Projec Name: " PREOJECT_NAME
echo "project($current_dir)" >> CMakeLists.txt 

echo "add_executable(run app.cpp)" >> CMakeLists.txt


exit 0
