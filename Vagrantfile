Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.define "dev" do |dev|
    dev.vm.network "forwarded_port", guest: 80, host: 8080,
      auto_correct: true, id: "desvtack"
    dev.vm.network "private_network", ip: "192.168.200.10"
    dev.vm.provision "shell", path: "script.sh"
    dev.disksize.size = '40GB'
  end
end
