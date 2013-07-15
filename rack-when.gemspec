# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/when/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-when"
  spec.version       = Rack::When::VERSION
  spec.authors       = ["Jon Rowe"]
  spec.email         = ["hello@jonrowe.co.uk"]
  spec.description   = %q{Simple gem to load rack middleware only in certain environments.}
  spec.summary       = %q{Simple gem to load rack middleware only in certain environments.}
  spec.homepage      = "https://github.com/JonRowe/rack-when"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

end
