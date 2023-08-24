#!/bin/bash

current_dir=${PWD##*/}

~/shell/./init_cmake.sh

touch app.cpp

echo -e "#include <iostream>\n\n" >> app.cpp

echo -e "int main()\n{\n\nreturn 0;\n};" >> app.cpp

nvim app.cpp  
