# frozen_string_literal: true

require 'rubocop'

require_relative 'netsoft/rubocop'
require_relative 'netsoft/rubocop/version'
require_relative 'netsoft/rubocop/inject'

Netsoft::Rubocop::Inject.defaults!

require_relative 'netsoft/rubocop/cops/netsoft_cops'
