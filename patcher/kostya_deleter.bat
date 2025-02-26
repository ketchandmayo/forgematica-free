@echo off
chcp 65001 >nul

type "%~dp0ascii1.txt"
echo.
echo.
echo.

set /p mode=Использовать сборку для строителей? (y/n):
set /p TARGET_PATH=Введите полный путь к папке "mods":

cls

set "FILE_PATTERNSTRAIGHT1=embeddium*.jar"
set "FILE_PATTERNSTRAIGHT2=embeddiumplus*.jar"
set "FILE_PATTERNSTRAIGHT3=oculus*.jar"
set "FILE_PATTERNSTRAIGHT4=sodiumdynamiclights*.jar"
set "FILE_PATTERNSTRAIGHT5=sodiumoptionsapi*.jar"

set "FILE_PATTERNBUILD1=Forgematica-0.1.12-mc1.20.1.jar"
set "FILE_PATTERNBUILD2=MaFgLib-0.1.13-mc1.20.1.jar"

set "FILE_TRIGGER=bendy-lib*.jar"

del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT1%.disabled" 2>nul
del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT2%.disabled" 2>nul
del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT3%.disabled" 2>nul
del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT4%.disabled" 2>nul
del "%TARGET_PATH%\%FILE_PATTERNSTRAIGHT5%.disabled" 2>nul

del "%TARGET_PATH%\%FILE_TRIGGER%" 2>nul

echo Нажимайте кнопку "Играть" в лончере
echo Ожидание триггера 
:loop
if exist "%TARGET_PATH%\%FILE_TRIGGER%" goto found

<nul set /p="."
set "dots=%dots%."

timeout /t 1 > nul
goto loop

:found
timeout /t 3 > nul
cls
echo Триггер найден!


if /i "%mode%"=="y" (
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

    echo Режим строителя включен!
) else (
    if exist "%TARGET_PATH%\%FILE_PATTERNBUILD1%" (
        ren "%TARGET_PATH%\%FILE_PATTERNBUILD1%" "%FILE_PATTERNBUILD1%.disabled"
    )
    if exist "%TARGET_PATH%\%FILE_PATTERNBUILD2%" (
        ren "%TARGET_PATH%\%FILE_PATTERNBUILD2%" "%FILE_PATTERNBUILD2%.disabled"
    )

    echo Стандартный режим включен!
)

echo.
echo.
type "%~dp0ascii2.txt"
echo.
echo Powered by chebupeli
timeout /t 10 > nul
