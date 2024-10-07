if [ "$(uname -s)" == "Darwin" ]; then
  # use `brew` on Mac
  brew install --cask visual-studio-code
else
  sudo snap install code --classic
fi
