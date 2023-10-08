
echo "Installing pwsh (PowerShell Core) modules"

for m in Microsoft.Graph PSFzf; do
  pwsh -Command "Install-Module $m -AcceptLicense"
done
