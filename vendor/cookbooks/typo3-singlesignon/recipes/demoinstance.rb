#
# Cookbook Name:: typo3-singlesignon
# Recipe:: demoinstance
#

include_recipe "typo3-singlesignon::flow_base"

include_recipe "database::mysql"

hostsfile_entry "127.0.0.1" do
  # TODO Use attr
  hostname "ssodemoinstance.vagrant"
end

application "typo3-singlesignon-demoinstance" do
  # TODO Use attr
  path "/usr/local/www/sites/ssodemoinstance"
  owner node[:apache][:user]
  group node[:apache][:user]
  # TODO Use attr
  repository "https://github.com/chlu/TYPO3.SingleSignOn.DemoInstance-Distribution.git"
  # TODO Use attr
  revision "10d4d6e0257a548808cf15148ac4db8f1b75e0d2"

  mod_php_apache2 do
    webapp_template "vhost.conf.erb"
    # TODO Use attr
    server_aliases ["ssodemoinstance.vagrant"]
  end

  before_migrate do
    current_release = release_path

    # TODO Use attr
    composer current_release do
      action [:deploy, :install]
    end

    # TODO Use attr
    mysql_database 'ssodemoinstance' do
      connection ({:host => "127.0.0.1", :username => 'root', :password => node['mysql']['server_root_password']})
      action :create
    end

    template "#{current_release}/Configuration/Settings.yaml" do
      # TODO Use attr
      source "demoinstance/Settings.yaml.erb"
      owner node[:apache][:user]
      group node[:apache][:user]
      mode "0644"
      # notifies :restart, 'service[apache2]'
    end
  end

  migrate true
  migration_command "./flow doctrine:migrate && ./flow acme.demoinstance:setup:setup"

  # Use force_deploy to run migrations even if on correct revision
  # action :force_deploy
end
