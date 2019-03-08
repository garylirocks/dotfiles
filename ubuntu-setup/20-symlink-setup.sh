#/bin/bash
# create symlinks pointing to resources in Dropbox

cd ~

CONFIG_SRC=~/drop/config
CONFIG_SRC_HOME=$CONFIG_SRC/home
BIN_SRC=~/drop/code/bin
LNOTE_SRC=~/drop/docs/notes/local-notes.md
CODE_SRC=~/drop/code

# link bin
ln -s $BIN_SRC ~/bin

# link code projects
ln -s $CODE_SRC/quickrefs ~/code/
ln -s $CODE_SRC/nodejs ~/code/
ln -s ~/.dotfiles ~/code/

# link ssh configs
ln -s $CONFIG_SRC_HOME/ssh-symlink ~/.ssh

# link AWS config
ln -s $CONFIG_SRC_HOME/aws-symlink ~/.aws


# link fonts folder
ln -s $CONFIG_SRC_HOME/fonts-symlink ~/.fonts

# link up hosts file
sudo ln -s $CONFIG_SRC/hosts /etc/hosts

# link local notes
ln -s $LNOTE_SRC ~/lnotes

# user-dirs file
echo 'Copy user-dirs.dirs'
cp $CONFIG_SRC_HOME/config/user-dirs.dirs ~/.config/


# terminator
# ln -s $CONFIG_SRC_HOME/config/terminator/config ~/.config/terminator/config


# autostart
ln -s $CONFIG_SRC_HOME/config/autostart/dropboxd.desktop ~/.config/autostart/dropboxd.desktop
ln -s $CONFIG_SRC_HOME/config/autostart/capslockasctrl.desktop ~/.config/autostart/capslockasctrl.desktop

# only valid for Ubuntu 16.04 + X1C gen5
# ln -s $CONFIG_SRC_HOME/config/autostart/trackpoint.desktop ~/.config/autostart/trackpoint.desktop
