#!/bin/sh
#        _                        _            ___  _  _   
#   __ _| | _____  _____ ___   __| | ___ _ __ / _ \| || |  
#  / _` | |/ _ \ \/ / __/ _ \ / _` |/ _ \ '__| | | | || |_ 
# | (_| | |  __/>  < (_| (_) | (_| |  __/ |  | |_| |__   _|
#  \__,_|_|\___/_/\_\___\___/ \__,_|\___|_|   \___/   |_|  
# 
# Copyright (c) 2024 alexcoder04 <alexcoder04@protonmail.com>
# 
# file preview scipt for lf

file="$1"; shift

# empty file
if [ ! -s "$file" ]; then
  echo "\033[0;41mEmpty file\033[0m"
  exit 0
fi

# check file type
case "$(file -Lb --mime-type "$file")" in
  *.djvu)
    echo "\033[36mDJVU file\033[0m"
    ;;
  image/*) # images
    echo "\033[36mImage file\033[0m"
    ;;
  video/*) # videos
    echo "\033[36mVideo file\033[0m"
    ;;
  audio/*) # audio
    echo "\033[36mAudio file\033[0m"
    ;;
  text/* | application/json | */xml) # text files
    cat "$file"
    ;;
  message/rfc822) # emails
    echo "\033[36mE-Mail:\033[0m"
    cat "$file"
    ;;
  */pdf) # pdfc as images
    echo "\033[36mPDF file\033[0m"
    ;;
  # different archives
  application/gzip)
    echo "\033[36mGzip Archive:\033[0m"
    tar -tzf "$file" | xargs -I{} echo " {}"
    ;;
  application/zstd)
    echo "\033[36mZstd Archive:\033[0m"
    tar --zstd -tf "$file" | xargs -I{} echo " {}"
    ;;
  application/x-xz)
    echo "\033[36mXz Archive:\033[0m"
    tar -tJf "$file" | xargs -I{} echo " {}"
    ;;
  application/x-tar | applicationx-ustar)
    echo "\033[36mTar archive:\033[0m"
    tar -tf "$file" | xargs -I{} echo " {}"
    ;;
  application/x-bzip2)
    echo "\033[36mBzip2 Archive:\033[0m"
    tar -tjf "$file" | xargs -I{} echo " {}"
    ;;
  application/zip)
    case "$file" in
      *.epub)
        zipinfo -1 "$file" \
          | grep -m 1 '.xhtml$' \
          | xargs -I{} unzip -p "$file" {} | w3m -dump -T text/html
          ;;
      *)
        echo "\033[36mZip archive:\033[0m"
        zipinfo "$file" | tail -n +3 | head -n -1 | awk '{ print " ",$9 }' ;;
    esac
    ;;
  *) # executables and binary files
    if [ -x "$file" ]; then
      echo "\033[0;46mBinary executable\033[0m"
    else
      echo "\033[0;46mBinary file\033[0m"
      echo "($(file -Lb --mime-type "$file"))"
    fi
    ;;
esac

