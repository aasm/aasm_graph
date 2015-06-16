# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aasm/graph/version'

Gem::Specification.new do |spec|
  spec.name          = "aasm_graph"
  spec.version       = AASM::Graph::VERSION
  spec.authors       = ["Ivan Tse", "Esteban Pastorino"]
  spec.email         = ["ivan.tse1@gmail.com", "ejpastorino@gmail.com"]
  spec.summary       = %q{Add-on gem for creating graphs from AASM state machine definitions}
  spec.description   = %q{Add-on gem for creating graphs from AASM state machine definitions}
  spec.homepage      = "https://github.com/aasm/aasm_graph"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "aasm", "~> 4.1.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
