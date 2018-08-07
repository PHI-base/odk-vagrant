#!/bin/sh

cd /home/

# Note that you must have wget version 1.16 or later installed:
# earlier versions of wget do not support TLS v1.2
wget --secure-protocol=TLSv1_2 \
  https://github.com/INCATools/ontology-development-kit/archive/v1.1.3.tar.gz

tar -xzvf v1.1.3.tar.gz
rm v1.1.3.tar.gz
