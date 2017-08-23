# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guardian-content/version'

Gem::Specification.new do |spec|
  spec.name          = "guardian-content"
  spec.version       = GuardianContent::VERSION
  spec.authors       = ["Jacopo Ghisolfi"]
  spec.email         = ["jacopo.ghisolfi@gmail.com"]
  spec.summary       = %q{Queries the Guardian Content API}
  spec.description   = %q{A library for the Guardian Content API.}
  spec.homepage      = "https://github.com/Jackopo/contentapi-ruby"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "shoulda", ">= 2.10.3"
  spec.add_development_dependency "coveralls"

  spec.add_runtime_dependency "httparty", ">= 0.5.2"
end
