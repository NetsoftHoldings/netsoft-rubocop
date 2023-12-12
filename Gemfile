# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gemspec

group :development, :test do
  gem 'rake', '>= 12.0'

  # These versions come by default with Ruby 3.2. If we don't specify them,
  # Ruby will try to install the newest, which requires C compiler, which
  # fails currently on our CI.
  gem 'bigdecimal', '<= 3.1.3'
  gem 'json', '<= 2.6.3'
  gem 'racc', '<= 1.6.2'
end
