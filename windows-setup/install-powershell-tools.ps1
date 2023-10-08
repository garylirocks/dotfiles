choco install -y powershell-core  # PowerShell Core (v7), not Windows PowerShell

# install fzf
choco install -y fzf
# install PSFzf module
Install-Module -Name PSFzf -RequiredVersion 2.5.14

# POSH
winget install JanDeDobbeleer.OhMyPosh -s winget
oh-my-posh font install # choose "CascadiaCode", this installs "CaskaydiaCove Nerd Font" families, which are what we need

# Font files are installed into system-wide folder `C:\Windows\Fonts`
#   not personal fonts folder at `C:\Users\LiG\AppData\Local\Microsoft\Windows\Fonts`
# DO NOT USE `choco install -y nerd-fonts-CascadiaCode`, which would lead to tofu blocks in terminal
