# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ganesha/version'

Gem::Specification.new do |spec|
  spec.name          = "ganesha"
  spec.version       = Ganesha::VERSION
  spec.authors       = ["Fabiano B."]
  spec.email         = ["fabianobeselga@gmail.com"]
  spec.summary       = %q{ Remember and share your links with your team on a weekly basis. }
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
