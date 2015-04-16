Install vagrant

https://www.vagrantup.com/downloads.html

Install ansible control

```bash
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

Add vagrant box

```bash
$ vagrant box add just/centos-6.5 https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box
$ vagrant init just/centos-6.5
```
Run vagrant

```bash
$ vagrant up
```