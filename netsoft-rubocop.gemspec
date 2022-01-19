# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'netsoft/rubocop/version'

Gem::Specification.new do |spec|
  spec.name    = 'netsoft-rubocop'
  spec.version = Netsoft::Rubocop::VERSION
  spec.authors = ['Alex Yarotsky', 'Edward Rudd']
  spec.email   = ['alex.yarotsky@hubstaff.com', 'edward@hubstaff.com']

  spec.summary  = 'Hubstaff style guides and shared style configs.'
  spec.homepage = 'https://github.com/netsoftHoldings/netsoft-rubocop'

  spec.files = Dir[
      'lib/**/*',
      'config/default.yml',
      '*.md',
  ]
  spec.extra_rdoc_files = %w[README.md]
  spec.require_paths = %w[lib]

  spec.required_ruby_version = '>= 2.4' # rubocop: disable Gemspec/RequiredRubyVersion

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '>= 12.0'

  spec.add_runtime_dependency 'rubocop', '= 1.25.0'
  spec.add_runtime_dependency 'rubocop-performance', '= 1.13.2'
  spec.add_runtime_dependency 'rubocop-rails', '= 2.13.2'
  spec.add_runtime_dependency 'rubocop-rake', '= 0.6.0'
  spec.add_runtime_dependency 'rubocop-rspec', '= 2.7.0'
end
