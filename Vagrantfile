# -*- mode: ruby -*-
# vi: set ft=ruby :

#configure
#if numtserver=0 will do a all in one setup
numtserver = 0

Vagrant.configure("2") do |config|
  config.vm.box = "centos/6"

  #due bug on 1.8.5
  config.ssh.insert_key = false

  (0..numtserver).each do |i|
    ip = "192.168.44.2#{i}"
    vm_name = "node#{i}"
    config.vm.define vm_name = vm_name do |node|
      #inside node loop
      node.vm.hostname = vm_name
      node.vm.network "private_network", ip: ip
      node.vm.provider :virtualbox do |vb|
        vb.name=vm_name
        vb.cpus = 2
        vb.customize ['modifyvm', :id, '--memory', '2048']
        vb.customize ['setextradata', :id, 'VBoxInternal/CPUM/SSE4.1', '1']
        vb.customize ['setextradata', :id, 'VBoxInternal/CPUM/SSE4.2', '1']
      end
      #local
      if vm_name == 'node0'
        node.vm.provision "shell", privileged: true, path: "scripts/master.sh"
      end

      if numtserver == 0 or i > 0
        node.vm.provision "shell", privileged: true, path: "scripts/tserver.sh"
      end
    end
  end

  #global settings
  config.vm.provision "shell", privileged: true, path: "scripts/common.sh"

end
