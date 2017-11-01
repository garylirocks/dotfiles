
sudo apt-get update

# install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# setup the repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# install docker community version
sudo apt-get install docker-ce


# add current user to the docker group to avoid a permission issue
# logging out and logging back in is required for this to take effect
sudo usermod -a -G docker $USER

