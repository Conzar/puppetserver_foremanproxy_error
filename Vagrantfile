# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # official ubuntu boxes
  # direct links
  config.vm.box = "trusty64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  
  # system memory
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end

  # default ip address
  config.vm.network "private_network", ip: "192.168.33.10"

  # setup puppet
  config.vm.provision :shell, :path => "upgrade-puppet.sh"

  # r10k configuration
  config.r10k.puppet_dir = 'puppet' 
  config.r10k.puppetfile_path = 'puppet/Puppetfile'

  # puppet configuration
  config.vm.provision "puppet" do |puppet|
    puppet.module_path = ["puppet/modules/"]
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "test.pp"
  end
end
