
echo "Configuring pwsh (PowerShell Core)"

pwsh_profile=$(pwsh -Command '$Profile.CurrentUserAllHosts')
shared_profile=$HOME/.dotfiles/windows-setup/powershell/PowerShell_profile.ps1

if ! [ -f "$pwsh_profile" ] || ! [ -L "$pwsh_profile" ]; then
  echo "Create a backup of PowerShell profile file"
  mv -v "$pwsh_profile" "$pwsh_profile".bak.$(date +%Y%m%d%H%M%S)

  echo "Create a symlink for PowerShell profile file"
  ln -s "$shared_profile" "$pwsh_profile"
fi