# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "ovov-calculator"
  spec.version       = OVOV::Calculator::VERSION
  spec.authors       = ["Honza Hovorka"]
  spec.email         = ["honza.hovorka@gmail.com"]
  spec.summary       = %q{Calculator for OVOV disciplines}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/honzahovorka/ovov-calculator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
