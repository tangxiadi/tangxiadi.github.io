#!/bin/bash
str=`git status|grep "images"`
echo "http://tangxiadi.github.io/"${str:1}|xsel -b
git add .
git commit -a -m "Update"
git push
#read -p "Press any key to continue." var
