Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

  # Note: Set this IP to value that doesn't exist on your local network
  # You have to configure hosts entries to this IP for ssodemoserver.vagrant
  # and ssodemoinstance.vagrant to access the virtual hosts in the VM.
  config.vm.network :hostonly, "10.11.12.23"

  config.vm.customize ["modifyvm", :id, "--memory", 512]

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "flowpack-singlesignon"

    # Specify chef attributes
    chef.json = {
      mysql: {
        server_root_password: 'root',
        server_repl_password: "root",
        server_debian_password: "root",
        bind_address: '127.0.0.1'
      }
    }
  end
end
