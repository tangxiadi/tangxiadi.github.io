@echo off
for /F "eol=  tokens=1,2,3 delims=	/" %%i in ('git status') do if %%i == images echo http://tangxiadi.github.io/images/%%j|clip
git add .
git commit -a -m "Update"
git push
::pause
