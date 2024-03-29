=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'spec_helper'
require 'json'

# Unit tests for Harbor2Client::RobotApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RobotApi' do
  before do
    # run before each test
    @instance = Harbor2Client::RobotApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RobotApi' do
    it 'should create an instance of RobotApi' do
      expect(@instance).to be_instance_of(Harbor2Client::RobotApi)
    end
  end

  # unit tests for create_robot
  # Create a robot account
  # Create a robot account
  # @param robot The JSON object of a robot account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @return [RobotCreated]
  describe 'create_robot test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_robot
  # Delete a robot account
  # This endpoint deletes specific robot account information by robot ID.
  # @param robot_id Robot ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @return [nil]
  describe 'delete_robot test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_robot_by_id
  # Get a robot account
  # This endpoint returns specific robot account information by robot ID.
  # @param robot_id Robot ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @return [Robot]
  describe 'get_robot_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_robot
  # Get robot account
  # List the robot accounts with the specified level and project.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @option opts [String] :q Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max]
  # @option opts [String] :sort Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot;
  # @option opts [Integer] :page The page number
  # @option opts [Integer] :page_size The size of per page
  # @return [Array<Robot>]
  describe 'list_robot test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for refresh_sec
  # Refresh the robot secret
  # Refresh the robot secret
  # @param robot_id Robot ID
  # @param robot_sec The JSON object of a robot account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @return [RobotSec]
  describe 'refresh_sec test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_robot
  # Update a robot account
  # This endpoint updates specific robot account information by robot ID.
  # @param robot_id Robot ID
  # @param robot The JSON object of a robot account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @return [nil]
  describe 'update_robot test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
