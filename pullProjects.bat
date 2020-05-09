@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "config.ini"^| find /i "="') do set %%i

echo %unityandroidProjectPath%
cd /d %unityandroidProjectPath%
::pause
git pull

echo %androidMainProjectPath%
cd /d %androidMainProjectPath%
::pause
git pull

::pause