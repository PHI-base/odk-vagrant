#!/bin/sh

cd /home/ontology-development-kit-*

# We have to add the binaries to the path, since the script fails to do it
sudo PATH=$PATH:$PWD/bin ./seed-my-ontology-repo.pl \
  -d pato \
  -u PHI-base \
  -t "PHIPO" \
  -c \
  phipo
