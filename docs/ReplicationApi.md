# Harbor2Client::ReplicationApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_replication_policy**](ReplicationApi.md#create_replication_policy) | **POST** /replication/policies | Create a replication policy
[**delete_replication_policy**](ReplicationApi.md#delete_replication_policy) | **DELETE** /replication/policies/{id} | Delete the specific replication policy
[**get_replication_execution**](ReplicationApi.md#get_replication_execution) | **GET** /replication/executions/{id} | Get the specific replication execution
[**get_replication_log**](ReplicationApi.md#get_replication_log) | **GET** /replication/executions/{id}/tasks/{task_id}/log | Get the log of the specific replication task
[**get_replication_policy**](ReplicationApi.md#get_replication_policy) | **GET** /replication/policies/{id} | Get the specific replication policy
[**list_replication_executions**](ReplicationApi.md#list_replication_executions) | **GET** /replication/executions | List replication executions
[**list_replication_policies**](ReplicationApi.md#list_replication_policies) | **GET** /replication/policies | List replication policies
[**list_replication_tasks**](ReplicationApi.md#list_replication_tasks) | **GET** /replication/executions/{id}/tasks | List replication tasks for a specific execution
[**start_replication**](ReplicationApi.md#start_replication) | **POST** /replication/executions | Start one replication execution
[**stop_replication**](ReplicationApi.md#stop_replication) | **PUT** /replication/executions/{id} | Stop the specific replication execution
[**update_replication_policy**](ReplicationApi.md#update_replication_policy) | **PUT** /replication/policies/{id} | Update the replication policy


# **create_replication_policy**
> create_replication_policy(policy, opts)

Create a replication policy

Create a replication policy

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

api_instance = Harbor2Client::ReplicationApi.new

policy = Harbor2Client::ReplicationPolicy.new # ReplicationPolicy | The replication policy

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create a replication policy
  api_instance.create_replication_policy(policy, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->create_replication_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy** | [**ReplicationPolicy**](ReplicationPolicy.md)| The replication policy | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_replication_policy**
> delete_replication_policy(id, opts)

Delete the specific replication policy

Delete the specific replication policy

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

api_instance = Harbor2Client::ReplicationApi.new

id = 789 # Integer | Replication policy ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete the specific replication policy
  api_instance.delete_replication_policy(id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->delete_replication_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Replication policy ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_replication_execution**
> ReplicationExecution get_replication_execution(id, opts)

Get the specific replication execution

Get the replication execution specified by ID

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

api_instance = Harbor2Client::ReplicationApi.new

id = 789 # Integer | The ID of the execution.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the specific replication execution
  result = api_instance.get_replication_execution(id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->get_replication_execution: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the execution. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**ReplicationExecution**](ReplicationExecution.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_replication_log**
> String get_replication_log(id, task_id, opts)

Get the log of the specific replication task

Get the log of the specific replication task

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

api_instance = Harbor2Client::ReplicationApi.new

id = 789 # Integer | The ID of the execution that the tasks belongs to.

task_id = 789 # Integer | The ID of the task.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the log of the specific replication task
  result = api_instance.get_replication_log(id, task_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->get_replication_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the execution that the tasks belongs to. | 
 **task_id** | **Integer**| The ID of the task. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

**String**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **get_replication_policy**
> ReplicationPolicy get_replication_policy(id, opts)

Get the specific replication policy

Get the specific replication policy

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

api_instance = Harbor2Client::ReplicationApi.new

id = 789 # Integer | Policy ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the specific replication policy
  result = api_instance.get_replication_policy(id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->get_replication_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Policy ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**ReplicationPolicy**](ReplicationPolicy.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_replication_executions**
> Array&lt;ReplicationExecution&gt; list_replication_executions(opts)

List replication executions

List replication executions

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

api_instance = Harbor2Client::ReplicationApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  policy_id: 56, # Integer | The ID of the policy that the executions belong to.
  status: 'status_example', # String | The execution status.
  trigger: 'trigger_example' # String | The trigger mode.
}

begin
  #List replication executions
  result = api_instance.list_replication_executions(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->list_replication_executions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **policy_id** | **Integer**| The ID of the policy that the executions belong to. | [optional] 
 **status** | **String**| The execution status. | [optional] 
 **trigger** | **String**| The trigger mode. | [optional] 

### Return type

[**Array&lt;ReplicationExecution&gt;**](ReplicationExecution.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_replication_policies**
> Array&lt;ReplicationPolicy&gt; list_replication_policies(opts)

List replication policies

List replication policies

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

api_instance = Harbor2Client::ReplicationApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  name: 'name_example' # String | Deprecated, use \"query\" instead. The policy name.
}

begin
  #List replication policies
  result = api_instance.list_replication_policies(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->list_replication_policies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **name** | **String**| Deprecated, use \&quot;query\&quot; instead. The policy name. | [optional] 

### Return type

[**Array&lt;ReplicationPolicy&gt;**](ReplicationPolicy.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_replication_tasks**
> Array&lt;ReplicationTask&gt; list_replication_tasks(id, opts)

List replication tasks for a specific execution

List replication tasks for a specific execution

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

api_instance = Harbor2Client::ReplicationApi.new

id = 789 # Integer | The ID of the execution that the tasks belongs to.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  status: 'status_example', # String | The task status.
  resource_type: 'resource_type_example' # String | The resource type.
}

begin
  #List replication tasks for a specific execution
  result = api_instance.list_replication_tasks(id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->list_replication_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the execution that the tasks belongs to. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **status** | **String**| The task status. | [optional] 
 **resource_type** | **String**| The resource type. | [optional] 

### Return type

[**Array&lt;ReplicationTask&gt;**](ReplicationTask.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **start_replication**
> start_replication(execution, opts)

Start one replication execution

Start one replication execution according to the policy

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

api_instance = Harbor2Client::ReplicationApi.new

execution = Harbor2Client::StartReplicationExecution.new # StartReplicationExecution | The ID of policy that the execution belongs to

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Start one replication execution
  api_instance.start_replication(execution, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->start_replication: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **execution** | [**StartReplicationExecution**](StartReplicationExecution.md)| The ID of policy that the execution belongs to | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **stop_replication**
> stop_replication(id, opts)

Stop the specific replication execution

Stop the replication execution specified by ID

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

api_instance = Harbor2Client::ReplicationApi.new

id = 789 # Integer | The ID of the execution.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Stop the specific replication execution
  api_instance.stop_replication(id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->stop_replication: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the execution. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_replication_policy**
> update_replication_policy(id, policy, opts)

Update the replication policy

Update the replication policy

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

api_instance = Harbor2Client::ReplicationApi.new

id = 789 # Integer | The policy ID

policy = Harbor2Client::ReplicationPolicy.new # ReplicationPolicy | The replication policy

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update the replication policy
  api_instance.update_replication_policy(id, policy, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ReplicationApi->update_replication_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The policy ID | 
 **policy** | [**ReplicationPolicy**](ReplicationPolicy.md)| The replication policy | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



