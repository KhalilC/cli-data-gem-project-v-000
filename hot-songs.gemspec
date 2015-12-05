# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hot/songs/version'

Gem::Specification.new do |spec|
  spec.name          = "hot-songs"
  spec.version       = Hot::Songs::VERSION
  spec.authors       = ["KhalilC"]
  spec.email         = ["klcrumpler@gmail.com"]

  spec.summary       = %q{Provide a CLI interface for popular songs by genre.}
  spec.description   = %q{Access hot songs by genre as determined by Billboard and Nielsen ratings.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end