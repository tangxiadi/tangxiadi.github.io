#!/bin/bash
if
str=`git status|grep ''$'\timage'`
then
echo "http://tangxiadi.github.io/"${str:1}|pbcopy
fi
git add .
git commit -a -m "Update"
git push
#read -p "Press any key to continue." var
