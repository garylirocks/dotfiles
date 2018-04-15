#!/bin/bash

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd

# after dropbox is installed, set the syncing folder to ~/docs/, a 'Dropbox' folder will be created in it automatically
echo "**set the syncing folder to ~/docs**, and create a symlink ~/drop"
ln -s ~/docs/Dropbox drop
