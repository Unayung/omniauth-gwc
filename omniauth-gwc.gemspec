# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-gwc/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-gwc"
  spec.version       = Omniauth::Gwc::VERSION
  spec.authors       = ["Unayung Chen"]
  spec.email         = ["unayung@gmail.com"]
  spec.summary       = "omniauth custom strategy for gwc user manager"
  spec.description   = "omniauth custom strategy for gwc user manager"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "figaro"
end
