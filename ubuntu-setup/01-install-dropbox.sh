#!/bin/bash

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
echo "============================"
echo "Dropbox installed"
echo "============================"

mkdir ~/docs/Dropbox
ln -s ~/docs/Dropbox ~/drop

echo "============================"
echo "Please set the syncing folder to ~/docs in Dropbox preference"
echo "Starting Dropbox now"
echo "============================"

~/.dropbox-dist/dropboxd
