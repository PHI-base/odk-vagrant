#!/bin/sh

# Add the Java 8 PPA repository
tee /etc/apt/sources.list.d/java-8-debian.list <<EOF
deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
EOF

# Add a key to validate the packages
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

# Automatically accept the Oracle license
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

# Install the JDK
apt-get update
apt-get install -y oracle-java8-installer
