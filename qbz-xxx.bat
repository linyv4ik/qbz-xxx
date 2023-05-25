::v1.01
chcp 65001
@echo off
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
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\australia.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\australia.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::austria
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\austria.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\austria.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::canada
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\canada.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\canada.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::chile
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\chile.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\chile.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::denmark
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\denmark.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\denmark.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::finland
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\finland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\finland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::france
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\france.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\france.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::germany
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\germany.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\germany.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::italy
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\italy.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\italy.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::luxembourg
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\luxembourg.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\luxembourg.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::mexico
::del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\mexico.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\mexico.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl %input%

::netherlands
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\netherlands.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\netherlands.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::newzeland
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\newzeland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\newzeland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::norway
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\norway.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\norway.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::portugal
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\portugal.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\portugal.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::spain
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\spain.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\spain.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::sweden
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\sweden.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\sweden.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::switzerland
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\switzerland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\switzerland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::unitedkingdom
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\unitedkingdom.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\unitedkingdom.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

::unitedstates
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\unitedstates.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\unitedstates.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl %input%

goto menu

:file_dl

::australia
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\australia.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\australia.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::austria
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\austria.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\austria.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::canada
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\canada.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\canada.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::chile
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\chile.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\chile.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::denmark
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\denmark.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\denmark.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::finland
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\finland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\finland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::france
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\france.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\france.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::germany
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\germany.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\germany.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::italy
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\italy.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\italy.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::luxembourg
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\luxembourg.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\luxembourg.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::mexico
::del /f/q "%cd%\.setting\qobuz-dl\config.ini"
::if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
::xcopy "%cd%\.setting\mexico.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
::rename "C:\ProgramData\TEMP\qobuz-dl\mexico.ini" config.ini
::move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
::if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
::qbzremake.py dl url.txt

::netherlands
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\netherlands.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\netherlands.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::newzeland
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\newzeland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\newzeland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::norway
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\norway.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\norway.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::portugal
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\portugal.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\portugal.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::spain
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\spain.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\spain.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::sweden
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\sweden.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\sweden.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::switzerland
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\switzerland.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\switzerland.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::unitedkingdom
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\unitedkingdom.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\unitedkingdom.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

::unitedstates
del /f/q "%cd%\.setting\qobuz-dl\config.ini"
if not exist "C:\ProgramData\TEMP\qobuz-dl" mkdir "C:\ProgramData\TEMP\qobuz-dl"
xcopy "%cd%\.setting\unitedstates.ini" "C:\ProgramData\TEMP\qobuz-dl" /y
rename "C:\ProgramData\TEMP\qobuz-dl\unitedstates.ini" config.ini
move "C:\ProgramData\TEMP\qobuz-dl\config.ini" "%cd%\.setting\qobuz-dl"
if exist "C:\ProgramData\TEMP\qobuz-dl" rmdir /S /Q "C:\ProgramData\TEMP\qobuz-dl"
qbzremake.py dl url.txt

goto menu

:qobuz_db
del /f/q %cd%\.setting\qobuz-dl\qobuz_dl.db
echo qobuz_dl.db видалено!
goto menu
