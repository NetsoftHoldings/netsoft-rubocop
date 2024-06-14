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

  spec.required_ruby_version = '>= 2.7' # rubocop: disable Gemspec/RequiredRubyVersion

  spec.add_runtime_dependency 'rubocop', '= 1.64.1'
  # TODO: The next version dropped support for Ruby < 2, can be updated when all of our projects
  # are on Ruby 3+
  spec.add_runtime_dependency 'rubocop-graphql', '= 1.1.1'
  spec.add_runtime_dependency 'rubocop-performance', '= 1.21.0'
  spec.add_runtime_dependency 'rubocop-rails', '= 2.25.0'
  spec.add_runtime_dependency 'rubocop-rake', '= 0.6.0'

  spec.add_runtime_dependency 'rubocop-rspec', '= 3.0.1'
  # Gems extracted from rubocop-rspec as separate projects:
  spec.add_runtime_dependency 'rubocop-capybara', '= 2.21.0'
  spec.add_runtime_dependency 'rubocop-factory_bot', '= 2.26.1'
  spec.add_runtime_dependency 'rubocop-rspec_rails', '= 2.30.0'
end
