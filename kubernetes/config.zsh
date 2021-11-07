# enable autocompletion

if type kubectl > /dev/null; then
  source <(kubectl completion zsh)
fi

if type helm > /dev/null; then
  source <(helm completion zsh)
fi
