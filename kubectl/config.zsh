# enable autocompletion

if type kubectl > /dev/null; then
  source <(kubectl completion zsh)
fi

