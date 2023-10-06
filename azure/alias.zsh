
# highlight default account
alias az-list-sub=$'az account list -otable --query "[].{Default: isDefault, Name: name, ID: id}" | sed \'/True/s/^/\'`echo -e "\033[32m"`\'/;s/$/\'`echo -e "\e[0m"`/'
