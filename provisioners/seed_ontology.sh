#!/bin/sh

cd /home/ontology-starter-kit-*

# We have to add the binaries to the path, since the script fails to do it
sudo PATH=$PATH:$PWD/bin ./seed-my-ontology-repo.pl \
  -d pato \
  -u jseager7 \
  -t "PHIPO" \
  -c \
  phipo
