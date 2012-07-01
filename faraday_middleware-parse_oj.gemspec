# -*- encoding: utf-8 -*-
require File.expand_path('../lib/faraday_middleware/parse_oj', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Vsevolod Romashov']
  gem.email         = ['7@7vn.ru']
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ''
  
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'faraday_middleware-parse_oj'
  gem.require_paths = ['lib']
  gem.version       = FaradayMiddleware::ParseOj::VERSION
  
  gem.add_runtime_dependency 'faraday_middleware', '~> 0.8'
  gem.add_runtime_dependency 'oj',                 '~> 1.2'
  
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
