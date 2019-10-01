Vagrant.configure("2") do |config|
  config.vm.box_check_update = false
  config.vm.box = "xcoo/bionic64"
  config.vm.define "web" do |web|
    web.vm.hostname = 'web' 
    web.vm.network :private_network, ip: "192.168.56.101"
  end
  config.vm.define "db" do |db|
    db.vm.hostname = 'db'
    db.vm.network :private_network, ip: "192.168.56.102"
  end
end
