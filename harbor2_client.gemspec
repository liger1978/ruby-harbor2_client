# -*- encoding: utf-8 -*-

=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

$:.push File.expand_path("../lib", __FILE__)
require "harbor2_client/version"

Gem::Specification.new do |s|
  s.name        = "harbor2_client"
  s.version     = Harbor2Client::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Richard Grainger", "Swagger-Codegen"]
  s.email       = [""]
  s.homepage    = "https://github.com/liger1978/ruby-harbor2_client/"
  s.summary     = "Harbor API Ruby Gem"
  s.description = "These APIs provide services for manipulating Harbor projects."
  s.license     = "MIT"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'
  s.add_runtime_dependency 'addressable', '~> 2.3', '>= 2.3.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
