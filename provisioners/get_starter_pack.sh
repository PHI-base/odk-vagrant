#!/bin/sh

cd /home/

# Note that you MUST have wget version 1.16 installed for this to work!
# Earlier versions of wget do not support TLS v1.2
wget --secure-protocol=TLSv1_2 \
  https://github.com/kimrutherford/ontology-starter-kit/archive/master.tar.gz

tar -xzvf master.tar.gz
rm master.tar.gz
