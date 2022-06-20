# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "generic/debian9"
 
  
  config.vm.provider "virtualbox" do |vb|
  vb.name = "debian"
  vb.memory = "2079"
  vb.cpus = 2
  
  end
  
  config.vm.hostname = "debian9"
  config.vm.provision "shell", path: "provision.sh"
  
end
