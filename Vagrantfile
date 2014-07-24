# -*- encoding: utf-8; mode: ruby; tab-width: 2; indent-tabs-mode: nil -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "salt-develop-box"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.hostname = "salt-develop-box"
  config.vm.network :private_network, ip: "33.33.33.71"

  #config.vm.provider "virtualbox" do |vb|
  #  vb.gui = true
  #end

  config.vm.synced_folder "salt", "/srv/salt/"

  config.vm.provision :salt do |salt|
    salt.verbose = true
    salt.install_type = "git"
    saltinstall_args = "develop"
    salt.minion_config = "minion"
    salt.run_highstate = true
  end
end
