=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'spec_helper'
require 'json'

# Unit tests for Harbor2Client::WebhookApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebhookApi' do
  before do
    # run before each test
    @instance = Harbor2Client::WebhookApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhookApi' do
    it 'should create an instance of WebhookApi' do
      expect(@instance).to be_instance_of(Harbor2Client::WebhookApi)
    end
  end

  # unit tests for create_webhook_policy_of_project
  # Create project webhook policy.
  # This endpoint create a webhook policy if the project does not have one. 
  # @param project_name_or_id The name or id of the project
  # @param policy Properties \&quot;targets\&quot; and \&quot;event_types\&quot; needed.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  # @return [nil]
  describe 'create_webhook_policy_of_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_webhook_policy_of_project
  # Delete webhook policy of a project
  # This endpoint is aimed to delete webhookpolicy of a project. 
  # @param project_name_or_id The name or id of the project
  # @param webhook_policy_id The ID of the webhook policy
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  # @return [nil]
  describe 'delete_webhook_policy_of_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_supported_event_types
  # Get supported event types and notify types.
  # Get supportted event types and notify types.
  # @param project_name_or_id The name or id of the project
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  # @return [SupportedWebhookEventTypes]
  describe 'get_supported_event_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhook_policy_of_project
  # Get project webhook policy
  # This endpoint returns specified webhook policy of a project. 
  # @param project_name_or_id The name or id of the project
  # @param webhook_policy_id The ID of the webhook policy
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  # @return [WebhookPolicy]
  describe 'get_webhook_policy_of_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for last_trigger
  # Get project webhook policy last trigger info
  # This endpoint returns last trigger information of project webhook policy. 
  # @param project_name_or_id The name or id of the project
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  # @return [Array<WebhookLastTrigger>]
  describe 'last_trigger test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_webhook_policies_of_project
  # List project webhook policies.
  # This endpoint returns webhook policies of a project. 
  # @param project_name_or_id The name or id of the project
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  # @option opts [String] :sort Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot;
  # @option opts [String] :q Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max]
  # @option opts [Integer] :page The page number
  # @option opts [Integer] :page_size The size of per page
  # @return [Array<WebhookPolicy>]
  describe 'list_webhook_policies_of_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_webhook_policy_of_project
  # Update webhook policy of a project.
  # This endpoint is aimed to update the webhook policy of a project. 
  # @param project_name_or_id The name or id of the project
  # @param webhook_policy_id The ID of the webhook policy
  # @param policy All properties needed except \&quot;id\&quot;, \&quot;project_id\&quot;, \&quot;creation_time\&quot;, \&quot;update_time\&quot;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id An unique ID for the request
  # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  # @return [nil]
  describe 'update_webhook_policy_of_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
