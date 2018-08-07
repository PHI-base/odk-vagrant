# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
settings = YAML.load_file './vagrant_config.yaml'

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.define "ontology-starter"

  config.vm.provider "virtualbox" do |v|
    # required for Java Runtime Environment memory allocation
    v.memory = 2048
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./share", "/vagrant"

  config.vm.provision "shell", path: "./provisioners/install_java8.sh"
  config.vm.provision "shell", path: "./provisioners/install_git.sh"
  config.vm.provision "shell", path: "./provisioners/install_wget_1-16.sh"

  config.vm.provision "starter_pack",
    type: "shell",
    path: "./provisioners/get_starter_pack.sh"

  config.vm.provision "install_deps",
    type: "shell",
    path: "./provisioners/install_deps.sh"

  config.vm.provision "seed_ontology",
    type: "shell",
    path: "./provisioners/seed_ontology.sh"

  config.vm.provision "set_git_user",
    type: "shell",
    path: "./provisioners/set_git_user.sh",
    args: [settings['git']['user'], settings['git']['email']]

end
