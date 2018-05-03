# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.define "ontology-starter"
  config.vm.hostname = "osk"

  config.vm.provision "shell", path: "./provisioners/install_java8.sh"
  config.vm.provision "shell", path: "./provisioners/install_git.sh"
  config.vm.provision "shell", path: "./provisioners/install_wget_1-16.sh"
  
  config.vm.provision "shell", path: "./provisioners/get_starter_pack.sh"
  
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./data", "/vagrant"
end
