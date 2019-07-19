#!/bin/bash
BASH_FOLDERS="ls pwd cd clear history locate which whatis touch cat mv rm cp grep ps_aux sudo chmod chown chgroup kill man find popd pushd"
PROGRAMS_FILES=""


mkdir Bash
cd Bash

echo "Creating Bash folders and files"
for PROGRAM in $BASH_FOLDERS
for FOLDER in $BASH_FOLDERS
  do
    mkdir $FOLDER
    cd $FOLDER
    touch $PROGRAMS_FILES
done
    touch $BASH_FOLDERS 
    cd ../
done
