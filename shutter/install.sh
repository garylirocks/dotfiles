sudo add-apt-repository -y ppa:linuxuprising/shutter
sudo apt install -y shutter

mkdir -p ~/downloads/screenshots/

ln --symbolic --interactive --verbose --target-directory ~/.shutter/ ~/linux_sync/config/home/_shutter/profiles/
