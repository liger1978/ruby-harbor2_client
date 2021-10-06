# Harbor2Client::PreheatApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_instance**](PreheatApi.md#create_instance) | **POST** /p2p/preheat/instances | Create p2p provider instances
[**create_policy**](PreheatApi.md#create_policy) | **POST** /projects/{project_name}/preheat/policies | Create a preheat policy under a project
[**delete_instance**](PreheatApi.md#delete_instance) | **DELETE** /p2p/preheat/instances/{preheat_instance_name} | Delete the specified P2P provider instance
[**delete_policy**](PreheatApi.md#delete_policy) | **DELETE** /projects/{project_name}/preheat/policies/{preheat_policy_name} | Delete a preheat policy
[**get_execution**](PreheatApi.md#get_execution) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions/{execution_id} | Get a execution detail by id
[**get_instance**](PreheatApi.md#get_instance) | **GET** /p2p/preheat/instances/{preheat_instance_name} | Get a P2P provider instance
[**get_policy**](PreheatApi.md#get_policy) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name} | Get a preheat policy
[**get_preheat_log**](PreheatApi.md#get_preheat_log) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions/{execution_id}/tasks/{task_id}/logs | Get the log text stream of the specified task for the given execution
[**list_executions**](PreheatApi.md#list_executions) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions | List executions for the given policy
[**list_instances**](PreheatApi.md#list_instances) | **GET** /p2p/preheat/instances | List P2P provider instances
[**list_policies**](PreheatApi.md#list_policies) | **GET** /projects/{project_name}/preheat/policies | List preheat policies
[**list_providers**](PreheatApi.md#list_providers) | **GET** /p2p/preheat/providers | List P2P providers
[**list_providers_under_project**](PreheatApi.md#list_providers_under_project) | **GET** /projects/{project_name}/preheat/providers | Get all providers at project level
[**list_tasks**](PreheatApi.md#list_tasks) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions/{execution_id}/tasks | List all the related tasks for the given execution
[**manual_preheat**](PreheatApi.md#manual_preheat) | **POST** /projects/{project_name}/preheat/policies/{preheat_policy_name} | Manual preheat
[**ping_instances**](PreheatApi.md#ping_instances) | **POST** /p2p/preheat/instances/ping | Ping status of a instance.
[**stop_execution**](PreheatApi.md#stop_execution) | **PATCH** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions/{execution_id} | Stop a execution
[**update_instance**](PreheatApi.md#update_instance) | **PUT** /p2p/preheat/instances/{preheat_instance_name} | Update the specified P2P provider instance
[**update_policy**](PreheatApi.md#update_policy) | **PUT** /projects/{project_name}/preheat/policies/{preheat_policy_name} | Update preheat policy


# **create_instance**
> create_instance(instance, opts)

Create p2p provider instances

Create p2p provider instances

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

api_instance = Harbor2Client::PreheatApi.new

instance = Harbor2Client::Instance.new # Instance | The JSON object of instance.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create p2p provider instances
  api_instance.create_instance(instance, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->create_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance** | [**Instance**](Instance.md)| The JSON object of instance. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_policy**
> create_policy(project_namepolicy, opts)

Create a preheat policy under a project

Create a preheat policy under a project

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

policy = Harbor2Client::PreheatPolicy.new # PreheatPolicy | The policy schema info

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create a preheat policy under a project
  api_instance.create_policy(project_namepolicy, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->create_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **policy** | [**PreheatPolicy**](PreheatPolicy.md)| The policy schema info | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_instance**
> delete_instance(preheat_instance_name, opts)

Delete the specified P2P provider instance

Delete the specified P2P provider instance

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

api_instance = Harbor2Client::PreheatApi.new

preheat_instance_name = 'preheat_instance_name_example' # String | Instance Name

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete the specified P2P provider instance
  api_instance.delete_instance(preheat_instance_name, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->delete_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **preheat_instance_name** | **String**| Instance Name | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_policy**
> delete_policy(project_namepreheat_policy_name, , opts)

Delete a preheat policy

Delete a preheat policy

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

preheat_policy_name = 'preheat_policy_name_example' # String | Preheat Policy Name

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete a preheat policy
  api_instance.delete_policy(project_namepreheat_policy_name, , opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->delete_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **preheat_policy_name** | **String**| Preheat Policy Name | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_execution**
> Execution get_execution(project_namepreheat_policy_name, execution_id, , opts)

Get a execution detail by id

Get a execution detail by id

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

preheat_policy_name = 'preheat_policy_name_example' # String | Preheat Policy Name

execution_id = 56 # Integer | Execution ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get a execution detail by id
  result = api_instance.get_execution(project_namepreheat_policy_name, execution_id, , opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->get_execution: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **preheat_policy_name** | **String**| Preheat Policy Name | 
 **execution_id** | **Integer**| Execution ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Execution**](Execution.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_instance**
> Instance get_instance(preheat_instance_name, opts)

Get a P2P provider instance

Get a P2P provider instance

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

api_instance = Harbor2Client::PreheatApi.new

preheat_instance_name = 'preheat_instance_name_example' # String | Instance Name

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get a P2P provider instance
  result = api_instance.get_instance(preheat_instance_name, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->get_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **preheat_instance_name** | **String**| Instance Name | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Instance**](Instance.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_policy**
> PreheatPolicy get_policy(project_namepreheat_policy_name, , opts)

Get a preheat policy

Get a preheat policy

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

preheat_policy_name = 'preheat_policy_name_example' # String | Preheat Policy Name

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get a preheat policy
  result = api_instance.get_policy(project_namepreheat_policy_name, , opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->get_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **preheat_policy_name** | **String**| Preheat Policy Name | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**PreheatPolicy**](PreheatPolicy.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_preheat_log**
> String get_preheat_log(project_namepreheat_policy_name, execution_id, task_id, opts)

Get the log text stream of the specified task for the given execution

Get the log text stream of the specified task for the given execution

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

preheat_policy_name = 'preheat_policy_name_example' # String | Preheat Policy Name

execution_id = 56 # Integer | Execution ID

task_id = 56 # Integer | Task ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the log text stream of the specified task for the given execution
  result = api_instance.get_preheat_log(project_namepreheat_policy_name, execution_id, task_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->get_preheat_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **preheat_policy_name** | **String**| Preheat Policy Name | 
 **execution_id** | **Integer**| Execution ID | 
 **task_id** | **Integer**| Task ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

**String**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **list_executions**
> Array&lt;Execution&gt; list_executions(project_namepreheat_policy_name, , opts)

List executions for the given policy

List executions for the given policy

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

preheat_policy_name = 'preheat_policy_name_example' # String | Preheat Policy Name

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
}

begin
  #List executions for the given policy
  result = api_instance.list_executions(project_namepreheat_policy_name, , opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->list_executions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **preheat_policy_name** | **String**| Preheat Policy Name | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 

### Return type

[**Array&lt;Execution&gt;**](Execution.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_instances**
> Array&lt;Instance&gt; list_instances(opts)

List P2P provider instances

List P2P provider instances

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

api_instance = Harbor2Client::PreheatApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
}

begin
  #List P2P provider instances
  result = api_instance.list_instances(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->list_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 

### Return type

[**Array&lt;Instance&gt;**](Instance.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_policies**
> Array&lt;PreheatPolicy&gt; list_policies(project_name, opts)

List preheat policies

List preheat policies

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
}

begin
  #List preheat policies
  result = api_instance.list_policies(project_name, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->list_policies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 

### Return type

[**Array&lt;PreheatPolicy&gt;**](PreheatPolicy.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_providers**
> Array&lt;Metadata&gt; list_providers(opts)

List P2P providers

List P2P providers

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

api_instance = Harbor2Client::PreheatApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #List P2P providers
  result = api_instance.list_providers(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->list_providers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Array&lt;Metadata&gt;**](Metadata.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_providers_under_project**
> Array&lt;ProviderUnderProject&gt; list_providers_under_project(project_name, opts)

Get all providers at project level

Get all providers at project level

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get all providers at project level
  result = api_instance.list_providers_under_project(project_name, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->list_providers_under_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Array&lt;ProviderUnderProject&gt;**](ProviderUnderProject.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_tasks**
> Array&lt;Task&gt; list_tasks(project_namepreheat_policy_name, execution_id, , opts)

List all the related tasks for the given execution

List all the related tasks for the given execution

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

preheat_policy_name = 'preheat_policy_name_example' # String | Preheat Policy Name

execution_id = 56 # Integer | Execution ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
}

begin
  #List all the related tasks for the given execution
  result = api_instance.list_tasks(project_namepreheat_policy_name, execution_id, , opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->list_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **preheat_policy_name** | **String**| Preheat Policy Name | 
 **execution_id** | **Integer**| Execution ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 

### Return type

[**Array&lt;Task&gt;**](Task.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **manual_preheat**
> manual_preheat(project_namepreheat_policy_name, policy, opts)

Manual preheat

Manual preheat

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

preheat_policy_name = 'preheat_policy_name_example' # String | Preheat Policy Name

policy = Harbor2Client::PreheatPolicy.new # PreheatPolicy | The policy schema info

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Manual preheat
  api_instance.manual_preheat(project_namepreheat_policy_name, policy, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->manual_preheat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **preheat_policy_name** | **String**| Preheat Policy Name | 
 **policy** | [**PreheatPolicy**](PreheatPolicy.md)| The policy schema info | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ping_instances**
> ping_instances(instance, opts)

Ping status of a instance.

This endpoint checks status of a instance, the instance can be given by ID or Endpoint URL (together with credential) 

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

api_instance = Harbor2Client::PreheatApi.new

instance = Harbor2Client::Instance.new # Instance | The JSON object of instance.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Ping status of a instance.
  api_instance.ping_instances(instance, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->ping_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance** | [**Instance**](Instance.md)| The JSON object of instance. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **stop_execution**
> stop_execution(project_namepreheat_policy_name, execution_id, execution, opts)

Stop a execution

Stop a execution

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

preheat_policy_name = 'preheat_policy_name_example' # String | Preheat Policy Name

execution_id = 56 # Integer | Execution ID

execution = Harbor2Client::Execution.new # Execution | The data of execution

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Stop a execution
  api_instance.stop_execution(project_namepreheat_policy_name, execution_id, execution, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->stop_execution: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **preheat_policy_name** | **String**| Preheat Policy Name | 
 **execution_id** | **Integer**| Execution ID | 
 **execution** | [**Execution**](Execution.md)| The data of execution | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_instance**
> update_instance(preheat_instance_nameinstance, opts)

Update the specified P2P provider instance

Update the specified P2P provider instance

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

api_instance = Harbor2Client::PreheatApi.new

preheat_instance_name = 'preheat_instance_name_example' # String | Instance Name

instance = Harbor2Client::Instance.new # Instance | The instance to update

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update the specified P2P provider instance
  api_instance.update_instance(preheat_instance_nameinstance, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->update_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **preheat_instance_name** | **String**| Instance Name | 
 **instance** | [**Instance**](Instance.md)| The instance to update | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_policy**
> update_policy(project_namepreheat_policy_name, policy, opts)

Update preheat policy

Update preheat policy

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

api_instance = Harbor2Client::PreheatApi.new

project_name = 'project_name_example' # String | The name of the project

preheat_policy_name = 'preheat_policy_name_example' # String | Preheat Policy Name

policy = Harbor2Client::PreheatPolicy.new # PreheatPolicy | The policy schema info

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update preheat policy
  api_instance.update_policy(project_namepreheat_policy_name, policy, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PreheatApi->update_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **preheat_policy_name** | **String**| Preheat Policy Name | 
 **policy** | [**PreheatPolicy**](PreheatPolicy.md)| The policy schema info | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



