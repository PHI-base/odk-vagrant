#!/bin/bash

cd /home/ontology-starter-kit-1.0.2

if [[ ":$PATH:" != *":$PWD/bin:"* ]]; then
  # seed-my-ontology-repo.pl tries (and fails) to do this step itself, so we
  # must run it manually here instead.
  touch /etc/profile.d/osk.sh \
  && echo "PATH=\$PATH:\$PWD/bin" > /etc/profile.d/osk.sh
  source ~/.profile
fi

sudo ./seed-my-ontology-repo.pl \
  -d chebi -d pato -d go \
  -u jseager7 \
  -t "PHIPO" \
  -c \
  phipo
