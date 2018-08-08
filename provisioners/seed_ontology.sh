#!/bin/sh

cd /home/vagrant/ontology-development-kit-*

# We have to add the binaries to the path, since the script fails to do it
PATH=$PATH:$PWD/bin:$PWD/bin/dosdp-tools/bin ./seed-my-ontology-repo.pl \
  -d pato \
  -u PHI-base \
  -t "PHIPO" \
  -c \
  phipo
