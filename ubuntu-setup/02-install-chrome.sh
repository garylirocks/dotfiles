#!/bin/bash

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# add the google source
GOOGLE_SOURCE=/etc/apt/sources.list.d/google.list

sudo touch $GOOGLE_SOURCE
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee $GOOGLE_SOURCE

sudo apt-get update
sudo apt-get install google-chrome-stable

sudo rm ${GOOGLE_SOURCE}

