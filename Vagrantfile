Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/ubuntu2004"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 3001, host: 3001
  config.vm.network "forwarded_port", guest: 27017, host: 27017
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
