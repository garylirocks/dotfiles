#/bin/bash

cd ~

DROP_CONFIG=~/drop/config
CONFIG_HOME=$DROP_CONFIG/home/

# link ssh configs
ln -s $CONFIG_HOME/.ssh ./
ln -s $CONFIG_HOME/.fonts ./


# link up hosts file
sudo ln -s $DROP_CONFIG/hosts /etc/hosts

# user-dirs file
echo 'Copy user-dirs.dirs'
cp $CONFIG_HOME/config/user-dirs.dirs ~/.config/


# terminator
ln -s $CONFIG_HOME/config/terminator/config ~/.config/terminator/config


# autostart
ln -s $CONFIG_HOME/config/autostart/dropboxd.desktop ~/.config/autostart/dropboxd.desktop
ln -s $CONFIG_HOME/config/autostart/capslockasctrl.desktop ~/.config/autostart/capslockasctrl.desktop
