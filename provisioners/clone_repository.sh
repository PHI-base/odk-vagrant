#!/bin/sh

REPO_URL=$1

cd /home/vagrant/

git clone ${REPO_URL}

# Transfer ownership to the default vagrant user, since commands may need 
# to be run manually from within the VM later.
chown -R vagrant:vagrant phipo

# Ensure all the script files in the ontology directory are executable.
cd /phipo/src/ontology
chmod +x *.sh
