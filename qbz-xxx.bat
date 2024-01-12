@echo off
chcp 65001
if not exist "%cd%\.setting\qobuz-dl\" mkdir "%cd%\.setting\qobuz-dl\"
if exist "%tmp%\q_version.txt" del /f "%tmp%\q_version.txt"
set version=1.3
curl -s "https://raw.githubusercontent.com/linyv4ik/update/main/q_version.txt" --output "%tmp%\q_version.txt"
cls
set /p file_version=<"%tmp%\q_version.txt"
if %version% lss %file_version% (
    echo Поточна версія %version% вийшло оновлення %file_version%
	goto choice
) else (
    goto menu
)
:menu
echo.
echo Введіть посилання на альбом Qobuz або виберіть бажану опцію з меню
echo.
echo 1 Завантажити посилання з файлу url.txt
echo 2 Видалити історію завантаження
echo.
set /P input=""
echo.
if %input% == 2 (goto qobuz_db)

::argentina
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\argentina.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\argentina.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::australia
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\australia.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\australia.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
if %input% == 1 (
	qbzremake.py dl url.txt
) else (
    qbzremake.py dl %input%
)

::austria
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\austria.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\austria.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::belgium
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\belgium.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\belgium.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::brasil
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\brasil.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\brasil.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
if %input% == 1 (
	qbzremake.py dl url.txt
) else (
    qbzremake.py dl %input%
)

::canada
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\canada.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\canada.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
if %input% == 1 (
	qbzremake.py dl url.txt
) else (
    qbzremake.py dl %input%
)

::chile
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\chile.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\chile.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::colombia
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\colombia.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\colombia.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::denmark
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\denmark.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\denmark.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::finland
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\finland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\finland.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::france
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\france.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\france.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
if %input% == 1 (
	qbzremake.py dl url.txt
) else (
    qbzremake.py dl %input%
)

::germany
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\germany.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\germany.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
if %input% == 1 (
	qbzremake.py dl url.txt
) else (
    qbzremake.py dl %input%
)

::ireland
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\ireland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\ireland.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::italy
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\italy.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\italy.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::luxembourg
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\luxembourg.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\luxembourg.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::mexico
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\mexico.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\mexico.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
if %input% == 1 (
	qbzremake.py dl url.txt
) else (
    qbzremake.py dl %input%
)

::netherlands
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\netherlands.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\netherlands.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::newzeland
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\newzeland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\newzeland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
if %input% == 1 (
	qbzremake.py dl url.txt
) else (
    qbzremake.py dl %input%
)

::norway
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\norway.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\norway.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::portugal
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\portugal.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\portugal.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::spain
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\spain.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\spain.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::sweden
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\sweden.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\sweden.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::switzerland
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\switzerland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\switzerland.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

::unitedkingdom
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\unitedkingdom.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\unitedkingdom.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
if %input% == 1 (
	qbzremake.py dl url.txt
) else (
    qbzremake.py dl %input%
)

::unitedstates
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\unitedstates.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\unitedstates.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::if %input% == 1 (
::	qbzremake.py dl url.txt
::) else (
::    qbzremake.py dl %input%
::)

goto menu

:qobuz_db
if exist "%cd%\.setting\qobuz-dl\qobuz_dl.db" del /f/q "%cd%\.setting\qobuz-dl\qobuz_dl.db"
echo qobuz_dl.db видалено!
goto menu

:choice
set /p update="Оновити скрипт до останньої версії? (1 так / 0 ні): "
cls
if %update% == 0 (goto menu)
if %update% == 1 (goto upd)
goto choice

:upd
if exist "%tmp%\qbz-xxx" @rd /s /q "%tmp%\qbz-xxx"
if exist "%tmp%\qbz-xxx.zip" del /f "%tmp%\qbz-xxx.zip"
if not exist "%tmp%\qbz-xxx" mkdir "%tmp%\qbz-xxx"
curl -s "https://codeload.github.com/linyv4ik/qbz-xxx/zip/refs/heads/main" --output "%tmp%\qbz-xxx.zip"
powershell Expand-Archive "%tmp%\qbz-xxx.zip" -DestinationPath "%tmp%\qbz-xxx"
xcopy "%tmp%\qbz-xxx\qbz-xxx-main\*" "%cd%" /E /I /Y
if exist "%tmp%\qbz-xxx" @rd /s /q "%tmp%\qbz-xxx"
if exist "%tmp%\qbz-xxx.zip" del /f "%tmp%\qbz-xxx.zip"
timeout /t 2
start cmd /c "qbz-xxx.bat"
exit