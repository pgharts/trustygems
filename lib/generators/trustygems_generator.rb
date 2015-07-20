class TrustygemsGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :gemspec_file, type: :string, default: "example.gemspec"

  def generate_config
    template "trustygems.yml.erb", "config/trustygems.yml"
  end

end
