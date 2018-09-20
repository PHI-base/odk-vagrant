# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
settings = YAML.load_file './config.yaml'

Vagrant.configure("2") do |config|

  config.vm.box = "debian/jessie64"
  config.vm.define "odk"

  config.vm.provision "install_docker",
    type: "shell",
    path: "./provisioners/install_docker.sh"

  config.vm.provision "clone_ontology_repo",
    type: "shell",
    path: "./provisioners/clone_repository.sh",
    args: [settings['repository_url']]

end
