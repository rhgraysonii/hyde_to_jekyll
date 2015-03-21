# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyde_to_jekyll/version'

Gem::Specification.new do |spec|
  spec.name          = "hyde_to_jekyll"
  spec.version       = HydeToJekyll::VERSION
  spec.authors       = ["Robert H Grayson II"]
  spec.email         = ["bobbygrayson@gmail.com"]
  spec.summary       = %q{A gem to migrate a databases records of blog entries to markdown, and into Jekyll.}
  spec.description   = %q{Coming soon.}
  spec.homepage      = "http://www.github.com/rhgraysonii/hyde_to_jekyll"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake"
end
