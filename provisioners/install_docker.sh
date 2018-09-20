#!/bin/sh

apt-get update

# Allow apt to use a repository over HTTPS
apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg2 \
  software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Verify the fingerprint
if apt-key finger | grep -q '0EBFCD88'; then
  true
else
  (>&2 echo "Error: Couldn't verify fingerprint for Docker's GPG key!")
  exit 1
fi

# Set up the stable Docker repository
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

apt-get update

apt-get -y install docker-ce
