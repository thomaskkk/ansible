# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
ENVIROMENT = "dev"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "just/centos-6.5"

  case ENVIROMENT
    when "dev"

      # Web server 1 (development only)
      config.vm.define 'web1' do |machine|
        machine.vm.hostname = 'web1'
        machine.vm.network "private_network", ip: "192.168.77.31"

        machine.vm.provision :ansible do |ansible|
          ansible.playbook = "provisioning/playbook.yml"
          ansible.inventory_path = "provisioning/hosts"
          ansible.sudo = "true"
          ansible.host_key_checking = "false"
          # uncomment for debug
          #ansible.verbose = "vvvv"
          
          
          # Disable default limit (required with Vagrant 1.5+)
          #ansible.limit = 'all'
        end
      end

    when "prod"

  end
end
