!#/usr/bin/sh

cd /home/ontology-starter-kit-1.0.2

# Needed to fix a string concatenation error in seed-my-ontology-repo.pl
export PWD=`pwd`

# The -E flag is needed to preserve environment variables
sudo -E bash -c './seed-my-ontology-repo.pl \
  -d chebi -d pato -d go \
  -u jseager7 \
  -t "PHIPO" \
  -c \
  phipo'
