@echo off
set /p TARGET_PATH=enter mods folder path:

set "FILE_PATTERN1=embeddium-0.3.31+mc1.20.1.jar"
set "FILE_PATTERN2=embeddiumplus-1.20.1-v1.2.13.jar"
set "FILE_PATTERN3=oculus-mc1.20.1-1.8.0_patched.jar"
set "FILE_PATTERN4=sodiumdynamiclights-forge-1.0.10-1.20.1.jar"
set "FILE_PATTERN5=sodiumoptionsapi-forge-1.0.10-1.20.1.jar"

if exist "%TARGET_PATH%\%FILE_PATTERN%" (
    del /F /Q "%TARGET_PATH%\%FILE_PATTERN1%"
    del /F /Q "%TARGET_PATH%\%FILE_PATTERN2%"
    del /F /Q "%TARGET_PATH%\%FILE_PATTERN3%"
    del /F /Q "%TARGET_PATH%\%FILE_PATTERN4%"
    del /F /Q "%TARGET_PATH%\%FILE_PATTERN5%"
    echo Fuck Kostya.
) else (
    echo Files not found.
)

pause
