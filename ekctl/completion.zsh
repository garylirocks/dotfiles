
if ! [[ -d ~/.zsh/completion/ ]]; then
  mkdir -p ~/.zsh/completion/
fi

if command -v eksctl &> /dev/null && ! [[ -f ~/.zsh/completion/_eksctl ]]; then
  eksctl completion zsh > ~/.zsh/completion/_eksctl
fi

