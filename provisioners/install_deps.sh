#!/bin/sh

cd /home/ontology-development-kit-*
test -d bin || mkdir -p bin
 
# Install OWLTools
wget http://build.berkeleybop.org/userContent/owltools/owltools -O bin/owltools \
  && wget http://build.berkeleybop.org/userContent/owltools/ontology-release-runner -O bin/ontology-release-runner \
  && wget http://build.berkeleybop.org/userContent/owltools/owltools-oort-all.jar -O bin/owltools-oort-all.jar

# Install ROBOT
wget https://raw.githubusercontent.com/ontodev/robot/v1.1.0/bin/robot -O bin/robot \
  && wget --secure-protocol=TLSv1_2 https://github.com/ontodev/robot/releases/download/v1.1.0/robot.jar -O bin/robot.jar 

# Install DOS-DP (Dead Simple Ontology Design Patterns)
wget --secure-protocol=TLSv1_2 https://github.com/INCATools/dosdp-tools/releases/download/v0.9/dosdp-tools-0.9.tgz \
  && tar -zxvf dosdp-tools-0.9.tgz \
  && mv dosdp-tools-0.9 bin/dosdp-tools \
  && PATH="$(pwd)/bin/dosdp-tools/bin:$PATH"

wget https://raw.githubusercontent.com/INCATools/dead_simple_owl_design_patterns/master/src/simple_pattern_tester.py -O bin/simple_pattern_tester.py
