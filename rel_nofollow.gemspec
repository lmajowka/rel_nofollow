# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rel_nofollow/version'

Gem::Specification.new do |spec|
  spec.name          = "rel_nofollow"
  spec.version       = RelNofollow::VERSION
  spec.authors       = ["Leo"]
  spec.email         = ["leo.majowka@gmail.com"]

  spec.summary       = "Add rel=nofollow to links inside an html code in string format"
  spec.description   = "Intall the gem and call string.add_nofollow to add rel='nofollow' to all links inside the string"
  spec.homepage      = "https://github.com/lmajowka/rel_nofollow"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
