#!/bin/sh
#        _                        _            ___  _  _   
#   __ _| | _____  _____ ___   __| | ___ _ __ / _ \| || |  
#  / _` | |/ _ \ \/ / __/ _ \ / _` |/ _ \ '__| | | | || |_ 
# | (_| | |  __/>  < (_| (_) | (_| |  __/ |  | |_| |__   _|
#  \__,_|_|\___/_/\_\___\___/ \__,_|\___|_|   \___/   |_|  
# 
# Copyright (c) 2023 alexcoder04 <alexcoder04@protonmail.com>
# 
# copy all the files into the repository

while IFS= read -r line; do
  set -- $line;
  rsync -rvu "$HOME/$1" "$2";
done < "list.txt"

