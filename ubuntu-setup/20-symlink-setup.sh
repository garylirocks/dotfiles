#/bin/bash
# create symlinks pointing to resources in Dropbox

cd ~

CONFIG_SRC=~/drop/config
CONFIG_SRC_HOME=$CONFIG_SRC/home
CONFIG_SRC_AUTOSTART=$CONFIG_SRC/home/config/autostart

BIN_SRC=~/drop/code/bin
CODE_SRC=~/drop/code

LN_OPTIONS='-s --interactive --no-target-directory --verbose'

# link bin
ln $LN_OPTIONS $BIN_SRC ~/bin

# link ssh configs
ln $LN_OPTIONS $CONFIG_SRC_HOME/_ssh ~/.ssh

# link AWS config
ln $LN_OPTIONS $CONFIG_SRC_HOME/_aws ~/.aws

# link npm config
ln $LN_OPTIONS $CONFIG_SRC_HOME/npmrc ~/.npmrc

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


# link code projects
ln -s --interactive --verbose --target-directory ~/code \
        $CODE_SRC/quickrefs \
        $CODE_SRC/nodejs

# autostart
if [ ! -d ~/.config/autostart ]; then
    mkdir ~/.config/autostart
fi
ln -s --interactive --verbose --target-directory ~/.config/autostart/ \
    $CONFIG_SRC_AUTOSTART/dropboxd.desktop \
    $CONFIG_SRC_AUTOSTART/caps-as-escape-and-ctrl.desktop

# only required for Ubuntu 16.04 + X1C gen5
# $CONFIG_SRC_AUTOSTART/trackpoint.desktop

