!#/usr/bin/sh

cd /home/ontology-starter-kit-1.0.2

# seed-my-ontology-repo.pl tries (and fails) to do this step itself, so we
# must run it manually here instead.
PATH=$PATH:$PWD/bin

sudo ./seed-my-ontology-repo.pl \
  -d chebi -d pato -d go \
  -u jseager7 \
  -t "PHIPO" \
  -c \
  phipo
