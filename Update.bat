@echo off
git status >status.tmp
for /F "eol=  tokens=1,2,3 delims=	/" %%i in (status.tmp) do (
echo %%i %%j %%k
)
del status.tmp
Pause
git add .
git commit -a -m "Update"
git push
echo.
echo COMPLETE! & pause 1>nul