source 'https://rubygems.org'

gem 'buff-extensions', '2.0.0'
gem 'listen', '3.1.5'
gem 'ruby_dep', '1.5.0'

gem 'chef', '~> 12'
gem 'berkshelf'
gem 'chefspec'
gem 'foodcritic'
gem 'rake'
gem 'rubocop', '= 0.81.0'

gem 'nokogiri', '~> 1.10.5'
gem 'ruby-dbus', '= 0.17.0'

group :integration do
  gem 'guard', '~> 2.6'
  gem 'guard-foodcritic', '~> 2.1.0'
  gem 'guard-rspec', '~> 4.2'
  gem 'kitchen-docker'
  gem 'kitchen-vagrant', '~> 1.7.0'
  gem 'test-kitchen', '= 2.5.4'
end

group :test do
  gem 'coveralls', require: false
end

group :development do
  gem 'stove'
end

# Uncomment these lines if you want to live on the Edge:
#
# group :development do
#   gem "berkshelf", github: "berkshelf/berkshelf"
#   gem "vagrant", github: "mitchellh/vagrant", tag: "v1.6.3"
# end
#
# group :plugins do
#   gem "vagrant-berkshelf", github: "berkshelf/vagrant-berkshelf"
#   gem "vagrant-omnibus", github: "schisamo/vagrant-omnibus"
# end