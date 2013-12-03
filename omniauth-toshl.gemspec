# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-toshl/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'omniauth-toshl'
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ['Ben']
  gem.email       = ['ben@h2ocube.com']
  gem.homepage    = 'https://github.com/h2ocube/omniauth-toshl'
  gem.summary     = %q{Omniauth Strategy for Toshl.com}
  gem.description = %q{Omniauth Strategy for Toshl.com}
  gem.license     = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.version       = Omniauth::Toshl::VERSION

  gem.add_dependency 'omniauth'
  gem.add_dependency 'omniauth-oauth2'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
