# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sartre/version'

Gem::Specification.new do |spec|
  spec.name          = "sartre"
  spec.version       = Sartre::VERSION
  spec.authors       = ["Tom Scott"]
  spec.email         = ["tubbo@psychedeli.ca"]
  spec.description   = %q{An extension for Ruby which allows existential operators}
  spec.summary       = %q{An extension for Ruby which allows existential operators}
  spec.homepage      = "http://tubbo.github.io/sartre"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
