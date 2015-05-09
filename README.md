## Ansible provisioning for Drupal projects

This is a simple concept to learn how to create an Ansible + Vagrant + Drupal provisioning, the idea is to create a dev, staging, production enviroments having all the flexibility that Ansible provides.

##### Install vagrant (do not install via apt-get)

https://www.vagrantup.com/downloads.html

##### Install virtualbox, git

```bash
$ sudo apt-get install virtualbox virtualbox-dkms git
```

##### Install ansible control on your dev machine

```bash
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

##### Add vagrant box

```bash
$ vagrant box add just/centos-6.5 https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box
```
##### Run vagrant

```bash
$ vagrant up
```
Your server(s) will be ready on the IP address added on the provisioning/hosts_* file.