# Harbor2Client::WebhookApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook_policy_of_project**](WebhookApi.md#create_webhook_policy_of_project) | **POST** /projects/{project_name_or_id}/webhook/policies | Create project webhook policy.
[**delete_webhook_policy_of_project**](WebhookApi.md#delete_webhook_policy_of_project) | **DELETE** /projects/{project_name_or_id}/webhook/policies/{webhook_policy_id} | Delete webhook policy of a project
[**get_supported_event_types**](WebhookApi.md#get_supported_event_types) | **GET** /projects/{project_name_or_id}/webhook/events | Get supported event types and notify types.
[**get_webhook_policy_of_project**](WebhookApi.md#get_webhook_policy_of_project) | **GET** /projects/{project_name_or_id}/webhook/policies/{webhook_policy_id} | Get project webhook policy
[**last_trigger**](WebhookApi.md#last_trigger) | **GET** /projects/{project_name_or_id}/webhook/lasttrigger | Get project webhook policy last trigger info
[**list_webhook_policies_of_project**](WebhookApi.md#list_webhook_policies_of_project) | **GET** /projects/{project_name_or_id}/webhook/policies | List project webhook policies.
[**update_webhook_policy_of_project**](WebhookApi.md#update_webhook_policy_of_project) | **PUT** /projects/{project_name_or_id}/webhook/policies/{webhook_policy_id} | Update webhook policy of a project.


# **create_webhook_policy_of_project**
> create_webhook_policy_of_project(project_name_or_idpolicy, opts)

Create project webhook policy.

This endpoint create a webhook policy if the project does not have one. 

### Example
```ruby
# load the gem
require 'harbor2_client'
# setup authorization
Harbor2Client.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Harbor2Client::WebhookApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

policy = Harbor2Client::WebhookPolicy.new # WebhookPolicy | Properties \"targets\" and \"event_types\" needed.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Create project webhook policy.
  api_instance.create_webhook_policy_of_project(project_name_or_idpolicy, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling WebhookApi->create_webhook_policy_of_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **policy** | [**WebhookPolicy**](WebhookPolicy.md)| Properties \&quot;targets\&quot; and \&quot;event_types\&quot; needed. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_webhook_policy_of_project**
> delete_webhook_policy_of_project(project_name_or_idwebhook_policy_id, opts)

Delete webhook policy of a project

This endpoint is aimed to delete webhookpolicy of a project. 

### Example
```ruby
# load the gem
require 'harbor2_client'
# setup authorization
Harbor2Client.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Harbor2Client::WebhookApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

webhook_policy_id = 789 # Integer | The ID of the webhook policy

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Delete webhook policy of a project
  api_instance.delete_webhook_policy_of_project(project_name_or_idwebhook_policy_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling WebhookApi->delete_webhook_policy_of_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **webhook_policy_id** | **Integer**| The ID of the webhook policy | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_supported_event_types**
> SupportedWebhookEventTypes get_supported_event_types(project_name_or_id, opts)

Get supported event types and notify types.

Get supportted event types and notify types.

### Example
```ruby
# load the gem
require 'harbor2_client'
# setup authorization
Harbor2Client.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Harbor2Client::WebhookApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Get supported event types and notify types.
  result = api_instance.get_supported_event_types(project_name_or_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling WebhookApi->get_supported_event_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

[**SupportedWebhookEventTypes**](SupportedWebhookEventTypes.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_webhook_policy_of_project**
> WebhookPolicy get_webhook_policy_of_project(project_name_or_idwebhook_policy_id, opts)

Get project webhook policy

This endpoint returns specified webhook policy of a project. 

### Example
```ruby
# load the gem
require 'harbor2_client'
# setup authorization
Harbor2Client.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Harbor2Client::WebhookApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

webhook_policy_id = 789 # Integer | The ID of the webhook policy

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Get project webhook policy
  result = api_instance.get_webhook_policy_of_project(project_name_or_idwebhook_policy_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling WebhookApi->get_webhook_policy_of_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **webhook_policy_id** | **Integer**| The ID of the webhook policy | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

[**WebhookPolicy**](WebhookPolicy.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **last_trigger**
> Array&lt;WebhookLastTrigger&gt; last_trigger(project_name_or_id, opts)

Get project webhook policy last trigger info

This endpoint returns last trigger information of project webhook policy. 

### Example
```ruby
# load the gem
require 'harbor2_client'
# setup authorization
Harbor2Client.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Harbor2Client::WebhookApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Get project webhook policy last trigger info
  result = api_instance.last_trigger(project_name_or_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling WebhookApi->last_trigger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

[**Array&lt;WebhookLastTrigger&gt;**](WebhookLastTrigger.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_webhook_policies_of_project**
> Array&lt;WebhookPolicy&gt; list_webhook_policies_of_project(project_name_or_id, opts)

List project webhook policies.

This endpoint returns webhook policies of a project. 

### Example
```ruby
# load the gem
require 'harbor2_client'
# setup authorization
Harbor2Client.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Harbor2Client::WebhookApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
}

begin
  #List project webhook policies.
  result = api_instance.list_webhook_policies_of_project(project_name_or_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling WebhookApi->list_webhook_policies_of_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]

### Return type

[**Array&lt;WebhookPolicy&gt;**](WebhookPolicy.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_webhook_policy_of_project**
> update_webhook_policy_of_project(project_name_or_idwebhook_policy_idpolicy, opts)

Update webhook policy of a project.

This endpoint is aimed to update the webhook policy of a project. 

### Example
```ruby
# load the gem
require 'harbor2_client'
# setup authorization
Harbor2Client.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Harbor2Client::WebhookApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

webhook_policy_id = 789 # Integer | The ID of the webhook policy

policy = Harbor2Client::WebhookPolicy.new # WebhookPolicy | All properties needed except \"id\", \"project_id\", \"creation_time\", \"update_time\".

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Update webhook policy of a project.
  api_instance.update_webhook_policy_of_project(project_name_or_idwebhook_policy_idpolicy, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling WebhookApi->update_webhook_policy_of_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **webhook_policy_id** | **Integer**| The ID of the webhook policy | 
 **policy** | [**WebhookPolicy**](WebhookPolicy.md)| All properties needed except \&quot;id\&quot;, \&quot;project_id\&quot;, \&quot;creation_time\&quot;, \&quot;update_time\&quot;. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



