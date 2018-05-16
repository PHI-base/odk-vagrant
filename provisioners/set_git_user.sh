#!/bin/sh

# Unfortunately we have to set the global git config, since until we run the
# ontology seed script, no git repository exists for us to set the local 
# configuration, and we can't set git user details during the script.

# Not using '~', since the provisioner runs as root
cd /home/vagrant

# Have to create .git in the home folder, since it doesn't initially exist
mkdir -p .git

git config --global user.name "$0"
git config --global user.email "$1"
