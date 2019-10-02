#!/usr/bin/ruby
#Use vagrant up --provision to run provision commands
Vagrant.configure("2") do |config|
  config.vm.box_check_update = false
  config.vm.box = "xcoo/bionic64"
  config.vm.define "ansible" do |ansible|
    ansible.vm.hostname = "ansible"
    ansible.vm.network :private_network, ip: "192.168.56.100"
    ansible.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 256]
      v.customize ["modifyvm", :id, "--name", "ansible"]
    end
    ansible.vm.provision :shell, path: "install-ansible.sh"
  end
  config.vm.define "web" do |web|
    web.vm.hostname = 'web' 
    web.vm.network :private_network, ip: "192.168.56.101"
    web.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "web"]
    end
  end
  config.vm.define "db" do |db|
    db.vm.hostname = 'db'
    db.vm.network :private_network, ip: "192.168.56.102"
    db.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "db"]
    end    
  end
end
