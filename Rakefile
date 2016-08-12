begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rspec/core/rake_task'

if defined?(RSpec)
  RSpec::Core::RakeTask.new('spec')
  task :default => :spec
end

Bundler::GemHelper.install_tasks
