@echo off
chcp 65001
cls
setlocal enabledelayedexpansion

set /p new_folder=Введіть новий шлях для каталогу завантаження: 

for %%F in (*.ini) do (
    set "file=%%F"
    for /f "usebackq delims=" %%L in ("!file!") do (
        set "line=%%L"
        setlocal enabledelayedexpansion
        echo !line! | findstr /i /r /c:"^default_folder[ ]*=" >nul
        if !errorlevel! equ 0 (
            >>"!file!.tmp" echo default_folder = %new_folder%
        ) else (
            >>"!file!.tmp" echo !line!
        )
        endlocal
    )
    del "!file!"
    ren "!file!.tmp" "!file!"
)

echo Зміни внесено до всіх ini-файлів.
pause
