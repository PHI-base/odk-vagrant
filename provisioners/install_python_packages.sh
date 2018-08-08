#!/bin/sh

apt-get -y install python3-pip

# Needed to prevent an error when installing ruamel.yaml
pip3 install -U setuptools

# Install the dependencies for DOS-DP
pip3 install jsonschema ruamel.yaml requests jsonpath_rw
