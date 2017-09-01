# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gem_path/version"

Gem::Specification.new do |spec|
  spec.name          = "gem_path"
  spec.version       = GemPath::VERSION
  spec.authors       = ["Juanito Fatas"]
  spec.email         = ["juanito-fatas@cookpad.jp"]

  spec.summary       = %q{Find where a gem is located.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/JuanitoFatas/gem_path"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 3.0"
end
