require "rubygems"
require "yaml"

namespace :trustygems do

  desc "Build and deploy the gem to the appropriate place"
  task :deploy do
    config = YAML.load_file("config/trustygems.yml")
    spec = Gem::Specification::load(config["gemspec"])
    sh "gem build #{config["gemspec"]}"
    sh "#{config["deploy_command"]} #{spec.name}-#{spec.version}.gem"
  end


end

