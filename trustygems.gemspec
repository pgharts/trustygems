# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "trustygems/version"

Gem::Specification.new do |s|
  s.name        = "trustygems"
  s.version     = Trustygems::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eric Sipple"]
  s.email       = ["sipple@trustarts.org"]
  s.homepage    = "https://github.com/pgharts/trustygems"
  s.summary     = %q{Standaridizing gem deploy commands, regardless of destination.}
  s.description = %q{Standaridizing gem deploy commands, regardless of destination.}

  s.add_dependency "rake"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end