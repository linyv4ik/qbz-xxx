@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion
title qbz-xxx
set /a available_countries=0
set version=2.009

::Settings
::активація країни: 0=вимкнена 1=активна
set dl_argentina=0
set dl_australia=0
set dl_austria=0
set dl_belgium=0
set dl_brasil=0
set dl_canada=1
set dl_chile=0
set dl_colombia=0
set dl_denmark=0
set dl_finland=0
set dl_france=1
set dl_germany=0
set dl_ireland=0
set dl_italy=0
set dl_luxembourg=0
set dl_mexico=0
set dl_netherlands=0
set dl_newzealand=0
set dl_norway=0
set dl_portugal=0
set dl_spain=0
set dl_sweden=0
set dl_switzerland=0
set dl_unitedkingdom=1
set dl_unitedstates=1

::далі не чіпати нічого
for %%C in (argentina australia austria belgium brasil canada chile colombia denmark finland france germany ireland italy luxembourg mexico netherlands newzealand norway portugal spain sweden switzerland unitedkingdom unitedstates) do (
    if !dl_%%C! equ 1 set /a available_countries+=1
)
::так як qbzremake.py переміщено в папку \.setting а qbzhash.py взагалі було видалено
::то тепер треба видалити не потрібні файли у користувачів
::цей код буде видалено в версії 2.012
if exist "qbzhash.py" del /f "qbzhash.py"
if exist "qbzremake.py" del /f "qbzremake.py"
::кінець коду
::restore health
if exist "%tmp%\update.bat" del /f "%tmp%\update.bat"
if not exist "%cd%\.setting" goto upd
if not exist "%cd%\.setting\qbzremake.py" goto upd
if not exist "%cd%\.setting\qobuz-dl\" mkdir "%cd%\.setting\qobuz-dl\"
::update checker
if exist "%tmp%\q_version.txt" del /f "%tmp%\q_version.txt"
curl -s "https://raw.githubusercontent.com/linyv4ik/update/main/q_version.txt" --output "%tmp%\q_version.txt"
cls
set /p file_version=<"%tmp%\q_version.txt"
if %version% lss %file_version% (
    echo Поточна версія %version% вийшло оновлення %file_version%
	goto choice
)
set dl=1
goto menu

:menu
title qbz-xxx v %version%   Країн доступно на момент оновлення: %available_countries%/25
echo.
echo Введіть посилання на альбом Qobuz або виберіть бажану опцію з меню
echo.
echo 1 Завантажити посилання з файлу url.txt
echo 2 Видалити історію завантаження
echo.
set /P input=
if %input% == 2 (goto qobuz_db)

:argentina
set country=argentina
if %dl_argentina% == 0 (goto australia)
if %dl% == 1 (goto downloads)
set dl=1

:australia
set country=australia
if %dl_australia% == 0 (goto austria)
if %dl% == 1 (goto downloads)
set dl=1

:austria
set country=austria
if %dl_austria% == 0 (goto belgium)
if %dl% == 1 (goto downloads)
set dl=1

:belgium
set country=belgium
if %dl_belgium% == 0 (goto brasil)
if %dl% == 1 (goto downloads)
set dl=1

:brasil
set country=brasil
if %dl_brasil% == 0 (goto canada)
if %dl% == 1 (goto downloads)
set dl=1

:canada
set country=canada
if %dl_canada% == 0 (goto chile)
if %dl% == 1 (goto downloads)
set dl=1

:chile
set country=chile
if %dl_chile% == 0 (goto colombia)
if %dl% == 1 (goto downloads)
set dl=1

:colombia
set country=colombia
if %dl_colombia% == 0 (goto denmark)
if %dl% == 1 (goto downloads)
set dl=1

:denmark
set country=denmark
if %dl_denmark% == 0 (goto finland)
if %dl% == 1 (goto downloads)
set dl=1

:finland
set country=finland
if %dl_finland% == 0 (goto france)
if %dl% == 1 (goto downloads)
set dl=1

:france
set country=france
if %dl_france% == 0 (goto germany)
if %dl% == 1 (goto downloads)
set dl=1

:germany
set country=germany
if %dl_germany% == 0 (goto ireland)
if %dl% == 1 (goto downloads)
set dl=1

:ireland
set country=ireland
if %dl_ireland% == 0 (goto italy)
if %dl% == 1 (goto downloads)
set dl=1

:italy
set country=italy
if %dl_italy% == 0 (goto luxembourg)
if %dl% == 1 (goto downloads)
set dl=1

:luxembourg
set country=luxembourg
if %dl_luxembourg% == 0 (goto mexico)
if %dl% == 1 (goto downloads)
set dl=1

:mexico
set country=mexico
if %dl_mexico% == 0 (goto netherlands)
if %dl% == 1 (goto downloads)
set dl=1

:netherlands
set country=netherlands
if %dl_netherlands% == 0 (goto newzealand)
if %dl% == 1 (goto downloads)
set dl=1

:newzealand
set country=newzealand
if %dl_newzealand% == 0 (goto norway)
if %dl% == 1 (goto downloads)
set dl=1

:norway
set country=norway
if %dl_norway% == 0 (goto portugal)
if %dl% == 1 (goto downloads)
set dl=1

:portugal
set country=portugal
if %dl_portugal% == 0 (goto spain)
if %dl% == 1 (goto downloads)
set dl=1

:spain
set country=spain
if %dl_spain% == 0 (goto sweden)
if %dl% == 1 (goto downloads)
set dl=1

:sweden
set country=sweden
if %dl_sweden% == 0 (goto switzerland)
if %dl% == 1 (goto downloads)
set dl=1

:switzerland
set country=switzerland
if %dl_switzerland% == 0 (goto unitedkingdom)
if %dl% == 1 (goto downloads)
set dl=1

:unitedkingdom
set country=unitedkingdom
if %dl_unitedkingdom% == 0 (goto unitedstates)
if %dl% == 1 (goto downloads)
set dl=1

:unitedstates
set country=unitedstates
if %dl_unitedstates% == 0 (goto menu)
if %dl% == 1 (goto downloads)
set dl=1

goto menu

:qobuz_db
echo.
if exist "%cd%\.setting\qobuz-dl\qobuz_dl.db" del /f/q "%cd%\.setting\qobuz-dl\qobuz_dl.db"
echo Історію завантаження видалено!
goto menu

:choice
set /p update="Оновити скрипт до останньої версії? (1 так / 0 ні): "
cls
if %update% == 0 (goto menu)
if %update% == 1 (goto upd)
goto choice

:upd
echo @echo off >>"%tmp%\update.bat"
echo timeout /t 1 >>"%tmp%\update.bat"
echo if exist "%tmp%\qbz-xxx" rmdir /s /q "%tmp%\qbz-xxx">>"%tmp%\update.bat"
echo if exist "%tmp%\qbz-xxx.zip" del /f "%tmp%\qbz-xxx.zip">>"%tmp%\update.bat"
echo if not exist "%tmp%\qbz-xxx" mkdir "%tmp%\qbz-xxx">>"%tmp%\update.bat"
echo curl -s "https://codeload.github.com/linyv4ik/qbz-xxx/zip/refs/heads/main" --output "%tmp%\qbz-xxx.zip">>"%tmp%\update.bat"
echo powershell Expand-Archive "%tmp%\qbz-xxx.zip" -DestinationPath "%tmp%\qbz-xxx" -Force>>"%tmp%\update.bat"
echo xcopy "%tmp%\qbz-xxx\qbz-xxx-main\*" "%cd%" /E /I /Y>>"%tmp%\update.bat"
echo if exist "%tmp%\qbz-xxx" rmdir /s /q "%tmp%\qbz-xxx">>"%tmp%\update.bat"
echo if exist "%tmp%\qbz-xxx.zip" del /f "%tmp%\qbz-xxx.zip">>"%tmp%\update.bat"
echo timeout /t 1 >>"%tmp%\update.bat"
echo start cmd /c "qbz-xxx.bat">>"%tmp%\update.bat"
start cmd /c "%tmp%\update.bat"
exit

:downloads
echo.
title qbz-xxx %country%
echo %cd%\.setting\%country%.ini
if not exist "%cd%\.setting\%country%.ini" goto country_skip
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\%country%.ini" "C:\ProgramData\TEMP\qobuz-dl" /y > nul
rename "C:\ProgramData\TEMP\qobuz-dl\%country%.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl" > nul
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
echo.
if %input% == 1 (
	"%cd%\.setting\qbzremake.py" dl url.txt
) else (
    "%cd%\.setting\qbzremake.py" dl %input%
)

:country_skip
set dl=0
goto %country%