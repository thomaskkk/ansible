# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "just/centos-6.5"
  
  #For parallel machine creation (production)
  #config.ssh.insert_key = false

  #HaProxy server (production)
  #config.vm.define 'lb1' do |machine|
  #  machine.vm.hostname = 'lb1'
  #  machine.vm.network "private_network", ip: "192.168.77.20"
  #end

  #Cache server 1 (production)
  #config.vm.define 'cache1' do |machine|
  #  machine.vm.hostname = 'cache1'
  #  machine.vm.network "private_network", ip: "192.168.77.22"
  #end

  #Cache server 2 (production)
  #config.vm.define 'cache2' do |machine|
  #  machine.vm.hostname = 'cache2'
  #  machine.vm.network "private_network", ip: "192.168.77.32"
  #end

  #Database server 1 (production)
  #config.vm.define 'db1' do |machine|
  #  machine.vm.hostname = 'db1'
  #  machine.vm.network "private_network", ip: "192.168.77.23"
  #end

  #Database server 2 (production)
  #config.vm.define 'db2' do |machine|
  #  machine.vm.hostname = 'db2'
  #  machine.vm.network "private_network", ip: "192.168.77.33"
  #end

  #Web server 2 (production)
  #config.vm.define 'web2' do |machine|
  #  machine.vm.hostname = 'web2'
  #  machine.vm.network "private_network", ip: "192.168.77.31"
  #end


  config.vm.define 'web1' do |machine|
    machine.vm.hostname = 'web1'
    machine.vm.network "private_network", ip: "192.168.77.21"

    machine.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/playbook.yml"
      ansible.sudo = "true"
      
      # Disable default limit (required with Vagrant 1.5+)
      ansible.limit = 'all'
    end
  end

end
