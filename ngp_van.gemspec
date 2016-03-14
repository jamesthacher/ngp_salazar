# encoding: UTF-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ngp_van/version'

Gem::Specification.new do |spec|
  spec.authors = ['Christopher Styles']
  spec.description = ['A Ruby wrapper for the NGP VAN API']
  spec.email = ['christopherstyles@gmail.com']
  spec.files = `git ls-files lib spec README.md`.split($INPUT_RECORD_SEPARATOR)
  spec.homepage = 'https://github.com/christopherstyles/ngp_van'
  spec.licenses = ['MIT']
  spec.name = 'ngp_van'
  spec.platform = Gem::Platform::RUBY
  spec.require_paths = %w(lib)
  spec.required_ruby_version = '>= 2.1.0'
  spec.summary = ['A Ruby wrapper for the NGP VAN API']
  spec.version = NgpVan::VERSION.dup

  spec.add_runtime_dependency 'faraday', ['>= 0.8', '< 0.10']
  spec.add_runtime_dependency 'faraday_middleware', ['>= 0.8', '< 0.10']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'faker', '~> 1.6'
  spec.add_development_dependency 'guard', '~> 2.13'
  spec.add_development_dependency 'guard-rspec', '~> 4.6'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'webmock', '~> 1.22'
end
