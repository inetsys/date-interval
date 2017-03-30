# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date-interval/version'

Gem::Specification.new do |spec|
  spec.name          = "date-interval"
  spec.version       = DateInterval::VERSION
  spec.authors       = ["Pablo Banderas"]
  spec.email         = ["pablo.banderas@inetsys.es"]
  spec.licenses      = ['MIT']

  spec.summary       = %q{Utility for DateTime intervals as string}
  spec.description   = %q{As moment.js or PHP DateInterval}
  spec.homepage      = "https://github.com/inetsys/date-interval"

  spec.required_ruby_version = Gem::Requirement.new(">= 1.9")
  spec.required_rubygems_version = ">= 1.3.6"

  spec.files         = Dir["{lib}/**/*.rb", "LICENSE", "*.md"]
  spec.test_files    = Dir["{spec}/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
