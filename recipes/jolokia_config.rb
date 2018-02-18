

directory  node['cassandra']['jolokia_conf_dir'] do
  owner node['cassandra']['user']
  group node['cassandra']['group']
  mode '0644'
  action :create
  recursive true
end

bash 'download jolokia agent' do
  code <<-EOH
    aws s3 cp #{node['cassandra']['jolokia']['s3_url']} #{node['cassandra']['lib_dir']}
  EOH
end

template ::File.join(node['cassandra']['jolokia_conf_dir'], 'jolokia.policy') do
  cookbook node['cassandra']['templates_cookbook']
  source 'jolokia.policy.erb'
  owner node['cassandra']['user']
  group node['cassandra']['group']
  mode '0644'
  notifies :restart, 'service[cassandra]', :delayed if node['cassandra']['notify_restart']
end


template ::File.join(node['cassandra']['jolokia_conf_dir'], 'jolokia.properties') do
  cookbook node['cassandra']['templates_cookbook']
  source 'jolokia.properties.erb'
  owner node['cassandra']['user']
  group node['cassandra']['group']
  mode '0644'
  notifies :restart, 'service[cassandra]', :delayed if node['cassandra']['notify_restart']
end