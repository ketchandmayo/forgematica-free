@echo off

set /p mode=use builder build? (y/n):
set /p TARGET_PATH=enter mods folder path:

set "FILE_PATTERNSTRAIGHT1=embeddium*.jar"
set "FILE_PATTERNSTRAIGHT2=embeddiumplus*.jar"
set "FILE_PATTERNSTRAIGHT3=oculus*.jar"
set "FILE_PATTERNSTRAIGHT4=sodiumdynamiclights*.jar"
set "FILE_PATTERNSTRAIGHT5=sodiumoptionsapi*.jar"

set "FILE_PATTERNBUILD1=Forgematica-0.1.12-mc1.20.1.jar"
set "FILE_PATTERNBUILD2=MaFgLib-0.1.13-mc1.20.1.jar"

del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT1%.disabled" 2>nul
del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT2%.disabled" 2>nul
del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT3%.disabled" 2>nul
del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT4%.disabled" 2>nul
del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT5%.disabled" 2>nul

if /i "%mode%"=="y" (
    echo Builder mode enabled.

    if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT1%" (
        ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT1%" "%FILE_PATTERNSTRAIGHT1%.disabled"
    )
    if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT2%" (
        ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT2%" "%FILE_PATTERNSTRAIGHT2%.disabled"
    )
    if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT3%" (
        ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT3%" "%FILE_PATTERNSTRAIGHT3%.disabled"
    )
    if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT4%" (
        ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT4%" "%FILE_PATTERNSTRAIGHT4%.disabled"
    )
    if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT5%" (
        ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT5%" "%FILE_PATTERNSTRAIGHT5%.disabled"
    )

    if exist "%TARGET_PATH%\%FILE_PATTERNBUILD1%.disabled" (
        ren "%TARGET_PATH%\%FILE_PATTERNBUILD1%.disabled" "%FILE_PATTERNBUILD1%"
    )
    if exist "%TARGET_PATH%\%FILE_PATTERNBUILD2%.disabled" (
        ren "%TARGET_PATH%\%FILE_PATTERNBUILD2%.disabled" "%FILE_PATTERNBUILD2%"
    )
) else (
    echo Builder mode disabled.

    @REM if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT1%.disabled" (
    @REM     ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT1%.disabled" "%FILE_PATTERNSTRAIGHT1%"
    @REM )
    @REM if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT2%.disabled" (
    @REM     ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT2%.disabled" "%FILE_PATTERNSTRAIGHT2%"
    @REM )
    @REM if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT3%.disabled" (
    @REM     ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT3%.disabled" "%FILE_PATTERNSTRAIGHT3%"
    @REM )
    @REM if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT4%.disabled" (
    @REM     ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT4%.disabled" "%FILE_PATTERNSTRAIGHT4%"
    @REM )
    @REM if exist "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT5%.disabled" (
    @REM     ren "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT5%.disabled" "%FILE_PATTERNSTRAIGHT5%"
    @REM )

    if exist "%TARGET_PATH%\%FILE_PATTERNBUILD1%" (
        ren "%TARGET_PATH%\%FILE_PATTERNBUILD1%" "%FILE_PATTERNBUILD1%.disabled"
    )
    if exist "%TARGET_PATH%\%FILE_PATTERNBUILD2%" (
        ren "%TARGET_PATH%\%FILE_PATTERNBUILD2%" "%FILE_PATTERNBUILD2%.disabled"
    )
)

echo Operation completed.
pause
