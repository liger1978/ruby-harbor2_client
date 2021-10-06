# Harbor2Client::ImmutableApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_immu_rule**](ImmutableApi.md#create_immu_rule) | **POST** /projects/{project_name_or_id}/immutabletagrules | Add an immutable tag rule to current project
[**delete_immu_rule**](ImmutableApi.md#delete_immu_rule) | **DELETE** /projects/{project_name_or_id}/immutabletagrules/{immutable_rule_id} | Delete the immutable tag rule.
[**list_immu_rules**](ImmutableApi.md#list_immu_rules) | **GET** /projects/{project_name_or_id}/immutabletagrules | List all immutable tag rules of current project
[**update_immu_rule**](ImmutableApi.md#update_immu_rule) | **PUT** /projects/{project_name_or_id}/immutabletagrules/{immutable_rule_id} | Update the immutable tag rule or enable or disable the rule


# **create_immu_rule**
> create_immu_rule(project_name_or_idimmutable_rule, opts)

Add an immutable tag rule to current project

This endpoint add an immutable tag rule to the project 

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

api_instance = Harbor2Client::ImmutableApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

immutable_rule = Harbor2Client::ImmutableRule.new # ImmutableRule | 

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Add an immutable tag rule to current project
  api_instance.create_immu_rule(project_name_or_idimmutable_rule, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ImmutableApi->create_immu_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **immutable_rule** | [**ImmutableRule**](ImmutableRule.md)|  | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_immu_rule**
> delete_immu_rule(project_name_or_idimmutable_rule_id, opts)

Delete the immutable tag rule.

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

api_instance = Harbor2Client::ImmutableApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

immutable_rule_id = 789 # Integer | The ID of the immutable rule

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Delete the immutable tag rule.
  api_instance.delete_immu_rule(project_name_or_idimmutable_rule_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ImmutableApi->delete_immu_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **immutable_rule_id** | **Integer**| The ID of the immutable rule | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_immu_rules**
> Array&lt;ImmutableRule&gt; list_immu_rules(project_name_or_id, opts)

List all immutable tag rules of current project

This endpoint returns the immutable tag rules of a project 

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

api_instance = Harbor2Client::ImmutableApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
}

begin
  #List all immutable tag rules of current project
  result = api_instance.list_immu_rules(project_name_or_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ImmutableApi->list_immu_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 

### Return type

[**Array&lt;ImmutableRule&gt;**](ImmutableRule.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_immu_rule**
> update_immu_rule(project_name_or_idimmutable_rule_idimmutable_rule, opts)

Update the immutable tag rule or enable or disable the rule

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

api_instance = Harbor2Client::ImmutableApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

immutable_rule_id = 789 # Integer | The ID of the immutable rule

immutable_rule = Harbor2Client::ImmutableRule.new # ImmutableRule | 

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Update the immutable tag rule or enable or disable the rule
  api_instance.update_immu_rule(project_name_or_idimmutable_rule_idimmutable_rule, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ImmutableApi->update_immu_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **immutable_rule_id** | **Integer**| The ID of the immutable rule | 
 **immutable_rule** | [**ImmutableRule**](ImmutableRule.md)|  | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



