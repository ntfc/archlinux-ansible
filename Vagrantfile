# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "archlinux/archlinux"
  config.vm.provider "virtualbox" do |vb|
    vb.customize [ "modifyvm", :id, "--memory", "1024" ]
  end
  # https://www.vagrantup.com/docs/vagrantfile/ssh_settings.html#config-ssh-insert_key
  config.ssh.insert_key = false
  # https://www.vagrantup.com/docs/vagrantfile/ssh_settings.html#config-ssh-forward_x11
  config.ssh.forward_x11 = true
  # https://www.vagrantup.com/docs/vagrantfile/ssh_settings.html#config-ssh-password
  config.ssh.password = "vagrant"
  # set login to root by default
  config.vm.provision "shell", inline: <<-SHELL
      echo "sudo su -" >> .bashrc
  SHELL
  # mount the current repository as if we were running this on a fresh local archlinux installation
  config.vm.synced_folder ".", "/ansible", owner: "root", group: "root"
end
