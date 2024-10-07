if command -v pwsh &> /dev/null; then
  echo "Configuring pwsh (PowerShell Core)"

  # the pwsh command might output notices about availability of package updates, so make sure only save the last line
  pwsh_profile=$(pwsh -Command '$Profile.CurrentUserAllHosts' | tail -1)

  shared_profile=$HOME/.dotfiles/windows-setup/powershell/PowerShell_profile.ps1

  if ! [ -d $(dirname $pwsh_profile) ]; then
    echo "Create PowerShell profile directory"
    mkdir -p $(dirname $pwsh_profile)
  fi

  if ! [ -f "$pwsh_profile" ] || ! [ -L "$pwsh_profile" ]; then
    echo "Create a backup of PowerShell profile file"
    mv -v "$pwsh_profile" "$pwsh_profile".bak.$(date +%Y%m%d%H%M%S)

    echo "Create a symlink for PowerShell profile file"
    ln -s "$shared_profile" "$pwsh_profile"
  fi
fi
