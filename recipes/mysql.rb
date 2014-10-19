include_recipe 'mysql::server'
include_recipe 'database::mysql'

template '/etc/mysql/conf.d/mysite.cnf' do
  owner 'mysql'
  owner 'mysql'
  source 'mysite.cnf.erb'
  notifies :restart, 'mysql_service[default]'
end



mysql_connection_info = {
  host: 'localhost',
  username: 'root',
  password: node['mysql']['server_root_password']
}

mysql_database node['app']['dbname'] do
  connection mysql_connection_info
  action :create
end

mysql_database_user node['app']['db_user'] do
  connection mysql_connection_info
  password node['app']['db_pass']
  database_name node['app']['dbname']
  privileges [:select, :update, :insert, :delete, :create, :index, :drop]
  action [:create, :grant]
end


