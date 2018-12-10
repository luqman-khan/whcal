# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whcal/version'

Gem::Specification.new do |spec|
  spec.name          = "whcal"
  spec.version       = Whcal::VERSION
  spec.authors       = ["Luqman Khan"]
  spec.email         = ["contact.luqman.khan@gmail.com"]

  spec.summary       = %q{Thes gem calculate the difference between two date time values. The output depends on the input given.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

 
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
