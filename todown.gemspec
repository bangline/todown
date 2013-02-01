# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todown/version'

Gem::Specification.new do |gem|
  gem.name          = "todown"
  gem.version       = Todown::VERSION
  gem.authors       = ["Dave Kennedy"]
  gem.email         = ["david@bangline.co.uk"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'thor', '~> 0.16.0'
  gem.add_runtime_dependency 'colorize', '0.5.8'
  gem.add_development_dependency 'rspec', '~> 2.12.0'
end
