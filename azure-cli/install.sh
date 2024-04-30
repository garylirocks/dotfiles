curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

for ext in ssh account azure-devops resource-graph; do
  az extension add --name $ext --allow-preview false
done
