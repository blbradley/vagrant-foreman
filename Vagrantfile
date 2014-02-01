# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  # config.vm.box = "my-boxname"

  config.vm.provider :virtualbox do |vb|
    # Boot with headless mode
    vb.gui = false
  
    # Use VBoxManage to customize the VM. For example to change memory:
    # vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "site"
    puppet.manifest_file  = "bootstrap.pp"
    puppet.module_path = "modules"
  end

end
