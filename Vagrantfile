Vagrant.configure("2") do |config|
  #config.vm.usable_port_range = 8080..8999

  config.vm.define "wildfly" do |host|
    #host.vm.box     = "ubuntu/focal64"   # ubuntu 20.04 LTS (Focal Fossa)
    host.vm.box      = "ubuntu/bionic64"  # ubuntu 18.04 LTS (Bionic Beaver)
    host.vm.hostname = "vanilla-wildfly"
    host.vm.synced_folder "salt/roots/", "/srv/salt/"
    host.vm.synced_folder "salt/pillar/",  "/srv/pillar/"
    host.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true
  end

  # Provision "shell":
  #  - We need pygit package to be able to use "gitfs"
  #    as a fileserver backend in salt
  #  - This provision has to be done before de "salt" provision 
  #  - If upgrade to "ubuntu 20.04 LTS (Focal Fossa)" change to:
  #  inline: "apt-get -y update ; apt-get -y install python3-pygit2"
  config.vm.provision "shell",
    # ubuntu 18.04 LTS (Bionic Beaver)
    inline: "apt-get -y update ; apt-get -y install python-pygit2"

  config.vm.provision :salt, run: "always"  do |salt|
    #salt.install_master = false
    #salt.install_type = "stable"
    #salt.bootstrap_options = "-D"
    salt.masterless = true
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
    salt.verbose = true
  end

end
