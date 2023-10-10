#################
# Set VI mode
#################
Set-PSReadlineOption -EditMode vi

# Change cursor style per VI mode
# See https://learn.microsoft.com/en-us/powershell/module/psreadline/set-psreadlineoption?view=powershell-7.3&viewFallbackFrom=powershell-7.1#example-6-use-vimodechangehandler-to-display-vi-mode-changes
function OnViModeChange {
  if ($args[0] -eq 'Command') {
    # Set the cursor to a blinking block.
    Write-Host -NoNewLine "`e[1 q"
  } else {
    # Set the cursor to a blinking line.
    Write-Host -NoNewLine "`e[5 q"
  }
}
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange

# set shortcuts
Set-PSReadLineKeyHandler -Chord 'ctrl+w' -Function BackwardDeleteWord -ViMode Insert
Set-PSReadLineKeyHandler -Chord 'ctrl+k' -Function CancelLine -ViMode Insert
Set-PSReadLineKeyHandler -Chord 'ctrl+k' -Function CancelLine -ViMode Command


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
