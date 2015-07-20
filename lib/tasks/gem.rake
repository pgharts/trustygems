require "rubygems"
require "yaml"

namespace :gem do

  desc "Build and deploy the gem to the appropriate place"
  task :deploy do
    config = YAML.load_file("config/trustygems.yml")
    spec = Gem::Specification::load(config["gemspec"])
    puts "gem build #{config["gemspec"]}"
    puts "#{config["deploy_command"]} #{spec.name}-#{spec.version}.gem"
  end


end

