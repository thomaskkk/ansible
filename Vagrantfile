# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# Varivel do ambiente vagrant, use a linha de comando, Ex.: AMBIENTE=dev vagrant up
AMBIENTE = ENV['AMBIENTE']

case AMBIENTE
  when "dev"
    Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
      config.vm.box = "just/centos-6.5"
        # Web DB server (development only)
        config.vm.define 'web1' do |machine|
          machine.vm.hostname = 'web1'
          machine.vm.network "private_network", ip: "192.168.77.31"

          machine.vm.provision :ansible do |ansible|
            ansible.playbook = "provisioning/playbook.yml"
            ansible.inventory_path = "provisioning/hosts_development"
            # uncomment for debug
            #ansible.verbose = "vvvv"
          end
        end
      end
  when "stage"
    Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
      config.vm.box = "just/centos-6.5"
        # Web DB LB CACHE server (stage only)
        config.vm.define 'web1' do |machine|
          machine.vm.hostname = 'web1'
          machine.vm.network "private_network", ip: "192.168.77.31"

          machine.vm.provision :ansible do |ansible|
            ansible.playbook = "provisioning/playbook.yml"
            ansible.inventory_path = "provisioning/hosts_stage"
          end
        end
      end
  when "prod"
    Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
      config.vm.box = "just/centos-6.5"

        # DB server (prod only)
        config.vm.define 'machine2' do |machine|
          machine.vm.hostname = 'machine2'
          machine.vm.network "private_network", ip: "192.168.77.22"
        end

        # Web server (prod only)
        config.vm.define 'web1' do |machine|
          machine.vm.hostname = 'web1'
          machine.vm.network "private_network", ip: "192.168.77.31"

          machine.vm.provision :ansible do |ansible|
            ansible.playbook = "provisioning/playbook.yml"
            ansible.inventory_path = "provisioning/hosts_production"
          end
        end
      end
  else message = "Você se esqueceu de especificar a variável AMBIENTE, Ex.: AMBIENTE=dev vagrant up"
end

puts message