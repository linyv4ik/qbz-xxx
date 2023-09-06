::v1.01
chcp 65001
@echo off
if not exist "%cd%\.setting\qobuz-dl\" mkdir "%cd%\.setting\qobuz-dl\"
cls
:menu
echo.
echo Введіть посилання на альбом Qobuz або виберіть бажану опцію з меню
echo.
echo 1 Завантажити посилання з файлу url.txt
echo 2 Видалити історію завантаження
echo.
set /P input=""
if %input% == 1 (goto file_dl)
if %input% == 2 (goto qobuz_db)

::australia
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\australia.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\australia.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::austria
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\austria.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\austria.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::belgium
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\belgium.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\belgium.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::canada
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\canada.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\canada.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::chile
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\chile.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\chile.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::denmark
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\denmark.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\denmark.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::finland
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\finland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\finland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::france
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\france.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\france.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::germany
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\germany.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\germany.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::ireland
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\ireland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\ireland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::italy
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\italy.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\italy.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::luxembourg
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\luxembourg.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\luxembourg.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::mexico
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\mexico.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\mexico.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::netherlands
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\netherlands.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\netherlands.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::newzeland
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\newzeland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\newzeland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::norway
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\norway.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\norway.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::portugal
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\portugal.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\portugal.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::spain
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\spain.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\spain.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::sweden
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\sweden.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\sweden.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::switzerland
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\switzerland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\switzerland.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::unitedkingdom
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\unitedkingdom.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\unitedkingdom.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::unitedstates
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\unitedstates.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\unitedstates.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

goto menu

:file_dl

::australia
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\australia.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\australia.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::austria
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\austria.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\austria.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::belgium
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\belgium.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\belgium.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::canada
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\canada.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\canada.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::chile
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\chile.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\chile.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::denmark
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\denmark.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\denmark.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::finland
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\finland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\finland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::france
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\france.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\france.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::germany
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\germany.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\germany.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::ireland
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\ireland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\ireland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::italy
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\italy.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\italy.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::luxembourg
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\luxembourg.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\luxembourg.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::mexico
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\mexico.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\mexico.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::netherlands
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\netherlands.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\netherlands.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::newzeland
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\newzeland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\newzeland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::norway
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\norway.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\norway.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::portugal
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\portugal.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\portugal.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::spain
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\spain.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\spain.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::sweden
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\sweden.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\sweden.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::switzerland
::if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\switzerland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\switzerland.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::unitedkingdom
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\unitedkingdom.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\unitedkingdom.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::unitedstates
if exist "%cd%\.setting\qobuz-dl\config.ini" del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\unitedstates.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\unitedstates.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

goto menu

:qobuz_db
if exist "%cd%\.setting\qobuz-dl\qobuz_dl.db" del /f/q "%cd%\.setting\qobuz-dl\qobuz_dl.db"
echo qobuz_dl.db видалено!
goto menu
