=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'spec_helper'
require 'json'

# Unit tests for Harbor2Client::StatisticApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StatisticApi' do
  before do
    # run before each test
    @instance = Harbor2Client::StatisticApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StatisticApi' do
    it 'should create an instance of StatisticApi' do
      expect(@instance).to be_instance_of(Harbor2Client::StatisticApi)
    end
  end

  # unit tests for get_statistic
  # Get the statistic information about the projects and repositories
  # Get the statistic information about the projects and repositories
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @return [Statistic]
  describe 'get_statistic test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
