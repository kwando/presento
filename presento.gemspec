# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'presento/version'

Gem::Specification.new do |spec|
  spec.name          = "presento"
  spec.version       = Presento::VERSION
  spec.authors       = ["kwando"]
  spec.email         = ["kwando@merciless.me"]
  spec.description   = %q{A barebones presenter library for ActiveModels}
  spec.summary       = %q{A barebones presenter library for ActiveModels}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
