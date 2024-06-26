#!/bin/sh

if [[ -z $_APT_UPDATED ]]; then
  sudo apt-get update
fi

# xcape: make 'CapsLock' act as 'Ctrl'
sudo apt-get install -y xcape \
                        curl terminator \
                        ascii exuberant-ctags xclip markdown jq \
                        inkscape graphviz \
                        rename


# sudo apt-get install -y gnome-tweak-tool

# Flash
## Enable "Ubuntu Partner" in "Software & Updates" first
# sudo apt-get install adobe-flashplugin

