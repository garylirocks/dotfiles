#!/bin/bash

cd ~

rmdir Desktop Documents Downloads Music Pictures Public Templates Videos

mkdir code docs downloads share

echo "==============================="
echo " Hide desktop icons"
echo "==============================="
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false

echo "==============================="
echo " Put dotfiles/ in ~/.dotfiles"
echo "==============================="
