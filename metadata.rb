name 'cassandra-dse'
maintainer 'Michael S. Klishin'
maintainer_email 'michael@clojurewerkz.org'
license 'Apache 2.0'
description 'Installs/configures Apache Cassandra'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url 'https://github.com/michaelklishin/cassandra-chef-cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/michaelklishin/cassandra-chef-cookbook/issues' if respond_to?(:issues_url)
version '4.6.0'
depends 'java' , '=1.50.0'
depends 'ulimit', '=0.4.0'
depends 'apt', '=6.1.4'
depends 'yum', '=5.1.0'
depends 'ark', '=3.1.0'
depends 'systemd', '=3.2.0'
depends 'seven_zip', '2.0.2'
depends 'windows', '3.4.4'
depends 'homebrew', '3.0.0'
depends 'chef_handler', '~> 3.0.2'
depends 'build-essential', '=8.0.4'
depends 'ohai', '5.2.2'
depends 'mingw', '2.0.2'
gem 'ruby-dbus', '= 0.17.0'
gem 'rexml', '~> 3.2', '>= 3.2.5'

chef_version '>= 12.9.1'

%w[ubuntu centos redhat fedora amazon].each do |os|
  supports os
end
