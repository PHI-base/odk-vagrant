#!/bin/sh

cd /home/

# Download JDK 8
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz
# Extract the downloaded tar file
tar -zxvf jdk-8u*-linux-*.tar.gz
# Move the JDK to /usr/
mv jdk1.8.*/ /usr/
# Install
update-alternatives --install /usr/bin/java java /usr/jdk1.8.*/bin/java 2
update-alternatives --config java
# Remove the tar file
rm jdk-8u*-linux-*.tar.gz
