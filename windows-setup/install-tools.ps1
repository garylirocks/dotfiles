# Use Windows PowerShell - Run as Administrator
##########
# Install Chocolatey
##########
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


##########
# Dev tools
##########
choco install -y microsoft-windows-terminal  # this installs "Cascadia Code", "Cascadia Mono" fonts as well
choco install -y vscode
winget install Git.Git


##########
# General tools
##########
choco install -y firefox
choco install -y greenshot


##########
# WSL
##########
choco install -y wsl2
wsl --set-default-version 2

# Install a new distro
choco install -y wsl-ubuntu-2004
wsl --set-version Ubuntu-20.04 2

# Or just import a tar file
# The installation location is 'wsl' here, seems it needs to be a relative path, absolute path doesn't work
cd 'C:\'
wsl --import 'Ubuntu-20.04' 'wsl' 'C:\Users\LiG\wsl-ubuntu-20.04.tar'
wsl --set-version Ubuntu-20.04 2