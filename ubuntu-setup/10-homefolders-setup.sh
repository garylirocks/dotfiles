#!/bin/bash

cd ~
rmdir Desktop Documents Downloads Music Pictures Public Templates Videos
mkdir code docs downloads share 

# after dropbox is installed, set the syncing folder to ~/docs/, a 'Dropbox' folder will be created in it automatically
ln -s docs/Dropbox drop
