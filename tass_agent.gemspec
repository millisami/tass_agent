# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tass_agent/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["millisami"]
  gem.email         = ["millisami@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tass_agent"
  gem.require_paths = ["lib"]
  gem.version       = TassAgent::VERSION
  
  gem.add_dependency 'foreverb', '~>0.3.0'
  
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'pry-nav'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'timecop'
  
end
