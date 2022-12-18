#/bin/bash
# create symlinks pointing to resources in Dropbox

cd ~

CONFIG_SRC=~/drop/config
CONFIG_SRC_HOME=$CONFIG_SRC/home
CONFIG_SRC_AUTOSTART=$CONFIG_SRC/home/config/autostart

BIN_SRC=~/drop/bin

LN_OPTIONS='--symbolic --interactive --no-target-directory --verbose'

# link bin
ln $LN_OPTIONS $BIN_SRC ~/bin

# link SSH configs
if which wsl.exe; then
  # in WSL, you can't change permissions of files symlinked from Windows
  # so we copy the files in, you need to keep files in sync manually
  ln $LN_OPTIONS $CONFIG_SRC_HOME/_ssh ~/.ssh-symlink-to-windows
  cp -r ~/.ssh-symlink-to-windows/* ~/.ssh/
else
  # link ssh configs
  ln $LN_OPTIONS $CONFIG_SRC_HOME/_ssh ~/.ssh
fi
chmod 600 ~/.ssh/*


# link AWS config
ln $LN_OPTIONS $CONFIG_SRC_HOME/_aws ~/.aws

# link Azure config
if [ ! -d ~/.azure ]; then
    mkdir ~/.azure
fi
ln $LN_OPTIONS $CONFIG_SRC_HOME/azure_config ~/.azure/config

# link fonts folder
ln $LN_OPTIONS $CONFIG_SRC_HOME/_fonts ~/.fonts

# link up hosts file
sudo ln $LN_OPTIONS $CONFIG_SRC/hosts /etc/hosts

# user-dirs file
echo 'Copy user-dirs.dirs'
cp --interactive --verbose $CONFIG_SRC_HOME/config/user-dirs.dirs ~/.config/


# terminator
if [ ! -d ~/.config/terminator ]; then
    mkdir ~/.config/terminator
fi
ln $LN_OPTIONS $CONFIG_SRC_HOME/config/terminator/config ~/.config/terminator/config


# autostart
if [ ! -d ~/.config/autostart ]; then
    mkdir ~/.config/autostart
fi
ln -s --interactive --verbose --target-directory ~/.config/autostart/ \
    $CONFIG_SRC_AUTOSTART/dropboxd.desktop \
    $CONFIG_SRC_AUTOSTART/caps-as-escape-and-ctrl.desktop


