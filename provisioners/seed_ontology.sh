#!/bin/sh

cd /home/ontology-starter-kit-*

sudo PATH=$PATH:$PWD/bin ./seed-my-ontology-repo.pl \
  -d pato \
  -u jseager7 \
  -t "PHIPO" \
  -c \
  phipo
