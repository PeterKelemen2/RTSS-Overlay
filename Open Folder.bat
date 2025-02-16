@echo off
setlocal

:: Query the registry and extract the install path
for /f "tokens=2,* delims=	 " %%A in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Unwinder\RTSS" /v InstallPath 2^>nul') do (
    set "RTSSPath=%%B"
)

:: Debugging: Print the extracted path
:: echo Extracted RTSSPath: "%RTSSPath%"

:: Check if the path was found
if not defined RTSSPath (
    echo RTSS is not installed or path not found in registry.
    pause
    exit /b
)

:: Remove "RTSS.exe" from the path if present
for %%I in ("%RTSSPath%") do set "RTSSDir=%%~dpI"

:: Ensure RTSSDir has a trailing backslash
if not "%RTSSDir:~-1%"=="\" set "RTSSDir=%RTSSDir%\"

:: Debugging: Print the extracted directory
echo Opening: "%RTSSDir%Plugins\Client\Overlays"
explorer "%RTSSDir%Plugins\Client\Overlays"

pause
