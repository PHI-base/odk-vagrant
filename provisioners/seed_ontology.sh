#!/bin/sh

cd /home/ontology-starter-kit-1.0.2

sudo PATH=$PATH:$PWD/bin ./seed-my-ontology-repo.pl \
  -d chebi -d pato -d go \
  -u jseager7 \
  -t "PHIPO" \
  -c \
  phipo
