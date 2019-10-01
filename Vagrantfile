Vagrant.configure("2") do |config|
  config.vm.define "web" do |web|
    web.vm.box = "xcoo/bionic64"
    web.vm.hostname = 'web' 
    web.vm.network :private_network, ip: "192.168.56.101"
  end
  config.vm.define "db" do |db|
    db.vm.box = "xcoo/bionic64"
    db.vm.hostname = 'db'
    db.vm.network :private_network, ip: "192.168.56.102"
  end
end
