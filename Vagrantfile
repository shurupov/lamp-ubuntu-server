# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise32"

  config.vm.provision "file", source: "init/pma", destination: "pma"

  config.vm.provision "shell", path: "init/initvm.sh"

  config.vm.synced_folder "deploy/", "/deploy"

  config.vm.network "private_network", ip: "192.168.10.11"

end
