@echo off
echo =======================================
echo     GitHub Upload Script by Antigravity
echo =======================================
echo.

echo Adding all changed files to Git...
git add .

echo.
set commitMsg=
set /p commitMsg="Enter commit message (Press ENTER for default 'Website update'): "
if "%commitMsg%"=="" set commitMsg=Website update

echo.
echo Committing changes...
git commit -m "%commitMsg%"

echo.
echo Pushing files to GitHub...
git push

echo.
echo =======================================
echo Upload Complete! 
echo =======================================
pause
