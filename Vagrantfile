# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
settings = YAML.load_file './config.yaml'

Vagrant.configure("2") do |config|

  config.vm.box = "debian/jessie64"
  config.vm.define "odk"
  config.vm.hostname = "odk"
  
  config.vm.provider "virtualbox" do |v|
    # required for the ODK to not crash when generating import files from
    # larger ontologies (such as GO or ChEBI)
    v.memory = 8192
  end

  config.vm.synced_folder "./ontology", "/home/vagrant/ontology",
    create: true,
    type: "virtualbox"
  
  config.vm.synced_folder "./share", "/vagrant",
    create: true,
    type: "virtualbox"

  config.vm.provision "docker"

end
