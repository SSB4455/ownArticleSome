setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "config.ini"^| find /i "="') do set %%i

call pullProjects.bat

rd /s/Q %androidMainProjectPath%\GlobalYou
mkdir %androidMainProjectPath%\GlobalYou
::pause
xcopy %unityandroidProjectPath%\GlobalYou %androidMainProjectPath%\GlobalYou /e/h/q 
::pause
cd /d %androidMainProjectPath%
call gradle wrapper
call gradle assembleDebug
start "" "app\build\outputs\apk\debug"
pause