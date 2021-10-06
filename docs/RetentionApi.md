# Harbor2Client::RetentionApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_retention**](RetentionApi.md#create_retention) | **POST** /retentions | Create Retention Policy
[**delete_retention**](RetentionApi.md#delete_retention) | **DELETE** /retentions/{id} | Delete Retention Policy
[**get_rentenition_metadata**](RetentionApi.md#get_rentenition_metadata) | **GET** /retentions/metadatas | Get Retention Metadatas
[**get_retention**](RetentionApi.md#get_retention) | **GET** /retentions/{id} | Get Retention Policy
[**get_retention_task_log**](RetentionApi.md#get_retention_task_log) | **GET** /retentions/{id}/executions/{eid}/tasks/{tid} | Get Retention job task log
[**list_retention_executions**](RetentionApi.md#list_retention_executions) | **GET** /retentions/{id}/executions | Get Retention executions
[**list_retention_tasks**](RetentionApi.md#list_retention_tasks) | **GET** /retentions/{id}/executions/{eid}/tasks | Get Retention tasks
[**operate_retention_execution**](RetentionApi.md#operate_retention_execution) | **PATCH** /retentions/{id}/executions/{eid} | Stop a Retention execution
[**trigger_retention_execution**](RetentionApi.md#trigger_retention_execution) | **POST** /retentions/{id}/executions | Trigger a Retention Execution
[**update_retention**](RetentionApi.md#update_retention) | **PUT** /retentions/{id} | Update Retention Policy


# **create_retention**
> create_retention(policy, opts)

Create Retention Policy

Create Retention Policy, you can reference metadatas API for the policy model. You can check project metadatas to find whether a retention policy is already binded. This method should only be called when no retention policy binded to project yet.

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

api_instance = Harbor2Client::RetentionApi.new

policy = Harbor2Client::RetentionPolicy.new # RetentionPolicy | Create Retention Policy successfully.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create Retention Policy
  api_instance.create_retention(policy, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->create_retention: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy** | [**RetentionPolicy**](RetentionPolicy.md)| Create Retention Policy successfully. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_retention**
> delete_retention(id, opts)

Delete Retention Policy

Delete Retention Policy, you can reference metadatas API for the policy model. You can check project metadatas to find whether a retention policy is already binded. This method should only be called when retention policy has already binded to project.

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

api_instance = Harbor2Client::RetentionApi.new

id = 789 # Integer | Retention ID.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete Retention Policy
  api_instance.delete_retention(id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->delete_retention: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Retention ID. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_rentenition_metadata**
> RetentionMetadata get_rentenition_metadata(opts)

Get Retention Metadatas

Get Retention Metadatas.

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

api_instance = Harbor2Client::RetentionApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get Retention Metadatas
  result = api_instance.get_rentenition_metadata(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->get_rentenition_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**RetentionMetadata**](RetentionMetadata.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_retention**
> RetentionPolicy get_retention(id, opts)

Get Retention Policy

Get Retention Policy.

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

api_instance = Harbor2Client::RetentionApi.new

id = 789 # Integer | Retention ID.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get Retention Policy
  result = api_instance.get_retention(id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->get_retention: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Retention ID. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**RetentionPolicy**](RetentionPolicy.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_retention_task_log**
> String get_retention_task_log(id, eid, tid, opts)

Get Retention job task log

Get Retention job task log, tags ratain or deletion detail will be shown in a table.

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

api_instance = Harbor2Client::RetentionApi.new

id = 789 # Integer | Retention ID.

eid = 789 # Integer | Retention execution ID.

tid = 789 # Integer | Retention execution ID.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get Retention job task log
  result = api_instance.get_retention_task_log(id, eid, tid, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->get_retention_task_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Retention ID. | 
 **eid** | **Integer**| Retention execution ID. | 
 **tid** | **Integer**| Retention execution ID. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

**String**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **list_retention_executions**
> Array&lt;RetentionExecution&gt; list_retention_executions(id, opts)

Get Retention executions

Get Retention executions, execution status may be delayed before job service schedule it up.

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

api_instance = Harbor2Client::RetentionApi.new

id = 789 # Integer | Retention ID.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 789, # Integer | The page number.
  page_size: 789 # Integer | The size of per page.
}

begin
  #Get Retention executions
  result = api_instance.list_retention_executions(id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->list_retention_executions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Retention ID. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number. | [optional] 
 **page_size** | **Integer**| The size of per page. | [optional] 

### Return type

[**Array&lt;RetentionExecution&gt;**](RetentionExecution.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_retention_tasks**
> Array&lt;RetentionExecutionTask&gt; list_retention_tasks(id, eid, opts)

Get Retention tasks

Get Retention tasks, each repository as a task.

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

api_instance = Harbor2Client::RetentionApi.new

id = 789 # Integer | Retention ID.

eid = 789 # Integer | Retention execution ID.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 789, # Integer | The page number.
  page_size: 789 # Integer | The size of per page.
}

begin
  #Get Retention tasks
  result = api_instance.list_retention_tasks(id, eid, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->list_retention_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Retention ID. | 
 **eid** | **Integer**| Retention execution ID. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number. | [optional] 
 **page_size** | **Integer**| The size of per page. | [optional] 

### Return type

[**Array&lt;RetentionExecutionTask&gt;**](RetentionExecutionTask.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **operate_retention_execution**
> operate_retention_execution(id, eid, body, opts)

Stop a Retention execution

Stop a Retention execution, only support \"stop\" action now.

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

api_instance = Harbor2Client::RetentionApi.new

id = 789 # Integer | Retention ID.

eid = 789 # Integer | Retention execution ID.

body = Harbor2Client::Body1.new # Body1 | The action, only support \"stop\" now.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Stop a Retention execution
  api_instance.operate_retention_execution(id, eid, body, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->operate_retention_execution: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Retention ID. | 
 **eid** | **Integer**| Retention execution ID. | 
 **body** | [**Body1**](Body1.md)| The action, only support \&quot;stop\&quot; now. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **trigger_retention_execution**
> trigger_retention_execution(id, body, opts)

Trigger a Retention Execution

Trigger a Retention Execution, if dry_run is True, nothing would be deleted actually.

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

api_instance = Harbor2Client::RetentionApi.new

id = 789 # Integer | Retention ID.

body = Harbor2Client::Body.new # Body | 

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Trigger a Retention Execution
  api_instance.trigger_retention_execution(id, body, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->trigger_retention_execution: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Retention ID. | 
 **body** | [**Body**](Body.md)|  | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **update_retention**
> update_retention(id, policy, opts)

Update Retention Policy

Update Retention Policy, you can reference metadatas API for the policy model. You can check project metadatas to find whether a retention policy is already binded. This method should only be called when retention policy has already binded to project.

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

api_instance = Harbor2Client::RetentionApi.new

id = 789 # Integer | Retention ID.

policy = Harbor2Client::RetentionPolicy.new # RetentionPolicy | 

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update Retention Policy
  api_instance.update_retention(id, policy, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RetentionApi->update_retention: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Retention ID. | 
 **policy** | [**RetentionPolicy**](RetentionPolicy.md)|  | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



