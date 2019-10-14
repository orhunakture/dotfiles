@echo off
set "CURRENT_DIR=%~dp0"
set "HOME=%USERPROFILE%"

REM # ssh
del "%HOME%\.ssh\config"
mkdir "%HOME%\.ssh"
mklink "%HOME%\.ssh\config" "%CURRENT_DIR%\ssh\config"

REM # aria2
del "%HOME%\.aria2\aria2.conf"
mkdir "%HOME%\.aria2"
mklink "%HOME%\.aria2\aria2.conf" "%CURRENT_DIR%\aria2\aria2.conf"

REM # git
del "%HOME%\.gitconfig"
mklink "%HOME%\.gitconfig" "%CURRENT_DIR%\git\gitconfig"

REM # mpv
del "%HOME%\scoop\persist\mpv-git\portable_config\mpv.conf"
mkdir "%HOME%\scoop\persist\mpv-git\portable_config"
mklink "%HOME%\scoop\persist\mpv-git\portable_config\mpv.conf" "%CURRENT_DIR%\mpv\mpv.conf"

REM # neovim
del "%HOME%\AppData\Local\nvim\init.vim"
mkdir "%HOME%\AppData\Local\nvim"
mklink "%HOME%\AppData\Local\nvim\init.vim" "%CURRENT_DIR%\neovim\init.vim"

REM # powershell
del "%HOME%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
del "%HOME%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
rmdir /s /q "%HOME%\Documents\PowerShell\Modules"
mkdir "%HOME%\Documents\WindowsPowerShell"

mklink "%HOME%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1" "%CURRENT_DIR%\powershell\profile"
mklink "%HOME%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" "%CURRENT_DIR%\powershell\profile"
mklink /j "%HOME%\Documents\PowerShell\Modules" "%CURRENT_DIR%\powershell\modules"

REM # Windows Terminal
del "%HOME%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\profiles.json"
mkdir "%HOME%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
mklink "%HOME%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\profiles.json" "%CURRENT_DIR%\terminal\profiles.json"
