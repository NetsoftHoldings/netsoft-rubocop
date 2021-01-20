# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'netsoft/rubocop/version'

Gem::Specification.new do |spec|
  spec.name          = 'netsoft-rubocop'
  spec.version       = Netsoft::Rubocop::VERSION
  spec.authors       = ['Alex Yarotsky']
  spec.email         = ['alex.yarotsky@hubstaff.com']

  spec.summary       = 'Hubstaff style guides and shared style configs.'
  spec.homepage      = 'https://github.com/netsoftHoldings/netsoft-rubocop'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) {
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]

  spec.required_ruby_version = '>= 2.4' # rubocop: disable Gemspec/RequiredRubyVersion

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '>= 12.0'

  spec.add_runtime_dependency 'rubocop', '= 1.8.1'
  spec.add_runtime_dependency 'rubocop-performance', '= 1.9.2'
  spec.add_runtime_dependency 'rubocop-rails', '= 2.9.1'
  spec.add_runtime_dependency 'rubocop-rake', '= 0.5.1'
  spec.add_runtime_dependency 'rubocop-rspec', '= 2.1.0'
end
