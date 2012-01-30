require 'rake'

# RSpec task
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:rspec) do |spec|
spec.rspec_opts = ['--color', "--format documentation"]
end

task :default => :rspec

# Build taulukko gem
desc "build taulukko gem"
task :build => 'rspec' do
    sh "gem build taulukko.gemspec"
end

