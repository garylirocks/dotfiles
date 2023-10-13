# azure-cli

## Files in `bin`

### Executable scripts

- `az-pim`
  - activate an Azure role eligible assignment
  - Usage:
    - `az-pim mg-name "role-name" timeInHours "Justification" "JIRA" "TICKET-12345"`
    - `az-pim sub-name "role-name" timeInHours`

- `az-pim-deactivate`
  - deactivate an Azure role active assignment
  - Usage:
    - `az-pim-deactivate scope-name "role-name"`

- `az-pim-list`
  - list Azure role active assignment over a scope
  - Usage:
    - `az-pim-list scope-name`

- `az-sub-list`
  - show all subscriptions as a table, highlight the default one
  - save the subscriptions in JSON format, so it can be used as a dictionary for other scripts
  - Usage:
    - `az-sub-list`

- `az-mg-list`
  - It's complicated to get a full list of management groups, for each top management group, you need to switch to a subscription under it, and execute the following command:

    ```sh
    az account management-group list --query '[].{name:displayName, id:name}' -otable
    ```
  - This script only copies an example file, then you need to customize it to your needs
  - Usage:
    - `az-mg-list`

### Support files

- `_util.sh`
  - Contains a function that translates subscription or management group name to full resource ID

- `management-group-list.example.json`
  - example JSON file for a list of management groups