@echo off
setlocal

:: Check if script is running as Administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit /b
)

:: Query the registry and extract the install path
for /f "tokens=2,* delims=	 " %%A in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Unwinder\RTSS" /v InstallPath 2^>nul') do (
    set "RTSSPath=%%B"
)

:: Debugging: Print the extracted path
echo Extracted RTSSPath: "%RTSSPath%"

:: Check if the path was found
if not defined RTSSPath (
    echo RTSS is not installed or path not found in registry.
    pause
    exit /b
)

:: Remove "RTSS.exe" from the path if present
for %%I in ("%RTSSPath%") do set "RTSSDir=%%~dpI"

:: Debugging: Print the extracted directory
echo Extracted RTSSDir: "%RTSSDir%"

:: Verify if the directory exists
if not exist "%RTSSDir%" (
    echo The extracted RTSS directory "%RTSSDir%" does not exist.
    pause
    exit /b
)

:: Copy the files to the correct directory
copy *.ovl "%RTSSDir%\Plugins\Client\Overlays\"

echo Files copied successfully to %RTSSDir%\Plugins\Client\Overlays\
pause
