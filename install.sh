#! /bin/bash

for dir in *
do
  [[ $dir =~ ^(README|prezto|install.sh)$ ]] && continue

  echo Installing $dir
  stow $dir

done
