
# List all accounts(subscriptions), and highlight the default one
#
# The original command is like
#   az account list -otable --query "[].{Default: isDefault, Name: name, ID: id}" | sed '/True/s/.*/printf "\\e[32m\0\\e[0m"/e'
# It needs to be quoted properly
alias az-list-sub=$'az account list -otable --query "[].{Default: isDefault, Name: name, ID: id}" | sed \'/True/s#.*#printf "\\\\e[32m\\0\\\\e[0m"#e\''
