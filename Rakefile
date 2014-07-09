require 'bundler/setup'

namespace :style do
  require 'rubocop/rake_task'
  desc 'Run Ruby style checks'
  Rubocop::RakeTask.new(:ruby) do |t|
    t.formatters = ['simple']
  end

  require 'foodcritic'
  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef)
end

desc 'Run all style checks'
task style: ['style:chef', 'style:ruby']

require 'rspec/core/rake_task'
desc 'Run ChefSpec unit tests'
RSpec::Core::RakeTask.new(:unit) do |t|
  t.rspec_opts = '--color --format documentation'
end

require 'stove/rake_task'
Stove::RakeTask.new

# We cannot run Test Kitchen on Jenkins yet...
namespace :jenkins do
  desc 'Run tests on Jenkins'
  task ci: %w(style)
end

# The default rake task should just run it all
task default: %w(style)
