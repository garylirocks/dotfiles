#################
# Set VI mode
#################
Set-PSReadlineOption -EditMode vi


#################
# init oh-my-posh
#################
oh-my-posh init pwsh | Invoke-Expression


#################
# init Git
#################
if (Test-Path("C:\Program Files\Git\bin\git.exe")) {
  $env:Path="C:\Program Files\Git\bin;$env:Path"
}


#################
# Chocolatey
#################
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


#################
# Add installed PowerShell modules to Windows PowerShell PSModulePath
#################
if ($PSVersionTable.PSEdition -eq "Desktop" -and (Test-Path "C:\Users\Gary Li\Documents\PowerShell\Modules")) {
  $env:PSModulePath = $env:PSModulePath + ";C:\Users\Gary Li\Documents\PowerShell\Modules"
}


#################
# PSFzf
#################
Import-Module PSFzf

# set FZF default options
# see https://github.com/kelleyma49/PSFzf#overriding-behavior
$ENV:_PSFZF_FZF_DEFAULT_OPTS="--border --reverse"

# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
