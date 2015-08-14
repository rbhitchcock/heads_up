# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heads_up/version'

Gem::Specification.new do |spec|
  spec.name          = 'heads_up'
  spec.version       = HeadsUp::VERSION
  spec.authors       = ['Blake Hitchcock']
  spec.email         = ['blhitchc@cisco.com']

  spec.summary       = %(
  Quickly and easily broadcast notices to users of your application without
  having to modify your code or restart your server.
  )
  spec.homepage      = 'https://github.com/rbhitchcock/heads_up'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  end

  spec.add_dependency 'rack'
  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'pry'
end
