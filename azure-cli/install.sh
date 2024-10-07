if [ "$(uname -s)" == "Darwin" ]; then
  # use `brew` on Mac
  brew install azure-cli
else
  # this uses `apt`
  curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
fi

for ext in ssh account azure-devops resource-graph; do
  az extension add --name $ext --allow-preview false
done