
wget -O /tmp/azcopy.tar.gz 'https://aka.ms/downloadazcopy-v10-linux'
cd /tmp
tar xzf azcopy.tar.gz
sudo cp azcopy_linux_*/azcopy /usr/local/bin
sudo chmod a+x /usr/local/bin/azcopy
