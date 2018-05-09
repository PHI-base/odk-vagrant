!#/bin/sh

# Remove any existing versions of wget
apt-get remove wget

# Install wget version 1.16 (needed for TLS v1.2)
apt-get update
apt-get build-dep wget
cd /home/
wget http://ftp.gnu.org/gnu/wget/wget-1.16.tar.gz
tar -xvf wget-1.16.tar.gz
cd wget-1.16/
./configure --with-ssl=openssl
make
make install
# Tidy up
cd /home/
rm wget-1.16.tar.gz
rm -r wget-1.16/