#!/bin/bash

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd


echo "ADD THE FOLLOWING TO AutoStart"
echo "/home/gary/.dropbox-dist/dropboxd"