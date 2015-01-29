@echo off
git status >status.tmp
FOR /F "eol=  tokens=1,2,3 delims=	/" %%i in (status.tmp) do echo %%i %%j %%k
Pause
Del test.txt

git add .
git commit -a -m "Update"
git push
echo.
echo COMPLETE! & pause 1>nul