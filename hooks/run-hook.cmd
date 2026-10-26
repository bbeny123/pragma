: << 'CMDBLOCK'
@echo off
REM Windows finds Bash; Unix skips this block.
REM Keep session-start extensionless to avoid Claude's Windows .sh detection.

setlocal
set "HOOK_DIR=%~dp0"
set "BASH_EXE="

if exist "C:\Program Files\Git\bin\bash.exe" set "BASH_EXE=C:\Program Files\Git\bin\bash.exe"
if not defined BASH_EXE if exist "C:\Program Files (x86)\Git\bin\bash.exe" set "BASH_EXE=C:\Program Files (x86)\Git\bin\bash.exe"

REM Require LOCALAPPDATA to avoid searching the current drive's root.
if not defined BASH_EXE if defined LOCALAPPDATA if exist "%LOCALAPPDATA%\Programs\Git\bin\bash.exe" set "BASH_EXE=%LOCALAPPDATA%\Programs\Git\bin\bash.exe"

REM Search only PATH, skipping extensionless matches and WSL launchers.
if not defined BASH_EXE if defined SystemRoot for /f "delims=" %%B in ('"%SystemRoot%\System32\where.exe" $PATH:bash 2^>nul') do if not defined BASH_EXE if not "%%~xB"=="" if /i not "%%~dpB"=="%SystemRoot%\System32\" if /i not "%%~dpB"=="%SystemRoot%\Sysnative\" if /i not "%%~dpB"=="%LOCALAPPDATA%\Microsoft\WindowsApps\" set "BASH_EXE=%%B"

REM Without Bash, skip startup injection.
if not defined BASH_EXE exit /b 0

REM Keep this outside a block so ERRORLEVEL reflects the child's exit code.
"%BASH_EXE%" "%HOOK_DIR%session-start"
exit /b %ERRORLEVEL%
CMDBLOCK

# Use shell builtins and the running Bash path to tolerate an empty PATH.
case "$0" in
  */*|*\\*) SCRIPT_DIR="$(cd "${0%[/\\]*}" && pwd)" ;;
  *) SCRIPT_DIR="$(pwd)" ;;
esac
exec "${BASH:-bash}" "${SCRIPT_DIR}/session-start"
