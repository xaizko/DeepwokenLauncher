@echo off

set "POWERSHELL_SCRIPT=DeepwokenShortcutMaker.ps1"

echo Launching PowerShell script...
echo.

:: This command opens up powershell and sets the script execution permission to ONLY this instance
:: No this is not a hack, you have to ask for permission to execute powershell scripts
:: If you are reading this and thinking you'll be getting hacked there is an attached manual method for running the powershell
:: There is also a manual method for making the shortcut yourself
:: Everything is also open source with zero obfuscation so...
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0%POWERSHELL_SCRIPT%"
