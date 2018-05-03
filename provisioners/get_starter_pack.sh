!#/usr/bin/sh

cd /home/

# Note that you MUST have wget version 1.16 installed for this to work!
# Earlier versions of wget do not support TLS v1.2
wget --secure-protocol=TLSv1_2 \
  https://github.com/INCATools/ontology-starter-kit/archive/v1.0.2.tar.gz

tar -xzvf v1.0.2.tar.gz
rm v1.0.2.tar.gz
