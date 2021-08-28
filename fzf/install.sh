sudo apt-get install fzf

FZF_CONFIG=~/.fzf.zsh

if ! [ -f "$FZF_CONFIG" ]; then
  touch "$FZF_CONFIG"
fi

