=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'spec_helper'
require 'json'

# Unit tests for Harbor2Client::QuotaApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'QuotaApi' do
  before do
    # run before each test
    @instance = Harbor2Client::QuotaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of QuotaApi' do
    it 'should create an instance of QuotaApi' do
      expect(@instance).to be_instance_of(Harbor2Client::QuotaApi)
    end
  end

  # unit tests for get_quota
  # Get the specified quota
  # Get the specified quota
  # @param id Quota ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @return [Quota]
  describe 'get_quota test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_quotas
  # List quotas
  # List quotas
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @option opts [Integer] :page The page number
  # @option opts [Integer] :page_size The size of per page
  # @option opts [String] :reference The reference type of quota.
  # @option opts [String] :reference_id The reference id of quota.
  # @option opts [String] :sort Sort method, valid values include: &#39;hard.resource_name&#39;, &#39;-hard.resource_name&#39;, &#39;used.resource_name&#39;, &#39;-used.resource_name&#39;. Here &#39;-&#39; stands for descending order, resource_name should be the real resource name of the quota. 
  # @return [Array<Quota>]
  describe 'list_quotas test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_quota
  # Update the specified quota
  # Update hard limits of the specified quota
  # @param id Quota ID
  # @param hard The new hard limits for the quota
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @return [nil]
  describe 'update_quota test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
