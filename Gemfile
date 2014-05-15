source 'https://rubygems.org'

group :test, :development  do
  gem 'rake'
  gem 'berkshelf',  '~> 3'
end

group :development do
  gem 'guard-kitchen', require: false
  gem 'guard-rubocop', require: false
  gem 'guard-rspec', require: false
  gem 'guard-foodcritic', require: false
end

group :test do
  gem 'chefspec'
  gem 'foodcritic'
  gem 'rubocop'
  gem 'thor-scmversion'
  gem 'test-kitchen'
  gem 'kitchen-vagrant'
  gem 'kitchen-docker'
  gem 'chef-zero'
  gem 'rainbow'
  gem 'chef-sugar'
  gem 'fauxhai'
end
