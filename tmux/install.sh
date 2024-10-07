
if command -v apt-get &> /dev/null; then
  sudo apt-get install -y tmux
elif command -v brew &> /dev/null; then
  brew install tmux
else
  echo "!! tmux not installed !!"
fi

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
