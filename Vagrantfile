#
# VARIABLES
site_dir = "files"

# Server Configuration
hostname        = "vagrant.developer"

# Set a local private network IP address.
server_ip             = "55.55.55.5"
server_cpus           = "1"   # Cores
server_memory         = "2048" # MB

# Database Configuration
mysql_root_password   = "root"   # We'll assume user "root"
mysql_version         = "5.5"    # Options: 5.5 | 5.6
mysql_enable_remote   = "false"  # remote access enabled when true
pgsql_root_password   = "root"   # We'll assume user "root"
mongo_version         = "2.6"    # Options: 2.6 | 3.0
mongo_enable_remote   = "false"  # remote access enabled when true

# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "trusty64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

	# Create a private network, which allows host-only access to the machine
	# using a specific IP.
	config.vm.network "private_network", ip: server_ip

	# Provider-specific configuration so you can fine-tune various
	# backing providers for Vagrant. These expose provider-specific options.
	# Example for VirtualBox:
	#
	config.vm.provider "virtualbox" do |vb|
	#   # Display the VirtualBox GUI when booting the machine
	#   vb.gui = true
	#
	#   # Customize the amount of memory on the VM:
		vb.memory = "2048"
	end

	# SHELL
	config.vm.provision :shell, :path => ".vagrant-provision/apache.sh", :args => [site_dir]
	# config.vm.provision :shell, :path => ".vagrant-provision/php.sh",
	# config.vm.provision :shell, :path => ".vagrant-provision/mysql.sh", :args => [mysql_root_password, mysql_enable_remote]
end
