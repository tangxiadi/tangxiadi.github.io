@echo off
git status>%tmp%\status.tmp
for /F "eol=  tokens=1,2,3 delims=	/" %%i in (%tmp%\status.tmp) do (
if %%i == images (
echo http://tangxiadi.github.io/images/%%j>%tmp%\clip.tmp
clip<%tmp%\clip.tmp
)
)
del %tmp%\clip.tmp
del %tmp%\status.tmp
git add .
git commit -a -m "Update"
git push
echo.
cls & echo Push complete, image URL has been copied to the clipboard! & pause 1>nul