#!/bin/bash
if
str=`git status|grep "images"`|xsel -b
then
echo "http://tangxiadi.github.io/"${str:1}
fi
git add .
git commit -a -m "Update"
git push
#read -p "Press any key to continue." var
