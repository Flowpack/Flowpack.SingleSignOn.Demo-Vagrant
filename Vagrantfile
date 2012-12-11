Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

  # Forward Apache
  config.vm.forward_port 80, 8080

  config.vm.provision :chef_solo do |chef|

    chef.add_recipe "apt"
    chef.add_recipe "openssl"
    chef.add_recipe "apache2"
    chef.add_recipe "mysql"
    chef.add_recipe "mysql::server"
    chef.add_recipe "php"
    # TODO Check if to include these recipes in "typo3-singlesignon"
    chef.add_recipe "php::module_apc"
    chef.add_recipe "php::module_curl"
    chef.add_recipe "php::module_mysql"
    chef.add_recipe "apache2::mod_php5"
    chef.add_recipe "apache2::mod_rewrite"

    chef.add_recipe "typo3-singlesignon"

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

  config.vm.customize ["modifyvm", :id, "--memory", 512]
end
