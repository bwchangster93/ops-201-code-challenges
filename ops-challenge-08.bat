@echo off
setlocal enabledelayedexpansion

echo What is the source folder path?
set /p sourcepath=Source folder path:

echo What is the destination folder path?
set /p destpath=Destination folder path?

if not exist "!sourcepath!\" (
    echo Error: source folder does not exist.
    goto :eof
)

if not exist "!destpath!\" (
    echo Error: Destination folder does not exist.
    goto:eof
)

Robocopy "!sourcepath!\" "!destpath!\" /E

if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during copy process.
) else (
    echo Copy complete.
)

:end
endlocal