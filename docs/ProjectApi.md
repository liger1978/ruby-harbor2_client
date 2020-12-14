# Harbor2Client::ProjectApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_project**](ProjectApi.md#create_project) | **POST** /projects | Create a new project.
[**delete_project**](ProjectApi.md#delete_project) | **DELETE** /projects/{project_id} | Delete project by projectID
[**get_logs**](ProjectApi.md#get_logs) | **GET** /projects/{project_name}/logs | Get recent logs of the projects
[**get_project**](ProjectApi.md#get_project) | **GET** /projects/{project_id} | Return specific project detail information
[**get_project_deletable**](ProjectApi.md#get_project_deletable) | **GET** /projects/{project_id}/_deletable | Get the deletable status of the project
[**get_project_summary**](ProjectApi.md#get_project_summary) | **GET** /projects/{project_id}/summary | Get summary of the project.
[**head_project**](ProjectApi.md#head_project) | **HEAD** /projects | Check if the project name user provided already exists.
[**list_projects**](ProjectApi.md#list_projects) | **GET** /projects | List projects
[**update_project**](ProjectApi.md#update_project) | **PUT** /projects/{project_id} | Update properties for a selected project.


# **create_project**
> create_project(project, opts)

Create a new project.

This endpoint is for user to create a new project.

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

api_instance = Harbor2Client::ProjectApi.new

project = Harbor2Client::ProjectReq.new # ProjectReq | New created project.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create a new project.
  api_instance.create_project(project, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectApi->create_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**ProjectReq**](ProjectReq.md)| New created project. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_project**
> delete_project(project_id, opts)

Delete project by projectID

This endpoint is aimed to delete project by project ID.

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

api_instance = Harbor2Client::ProjectApi.new

project_id = 789 # Integer | The ID of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete project by projectID
  api_instance.delete_project(project_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectApi->delete_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| The ID of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_logs**
> Array&lt;AuditLog&gt; get_logs(project_name, opts)

Get recent logs of the projects

Get recent logs of the projects

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

api_instance = Harbor2Client::ProjectApi.new

project_name = 'project_name_example' # String | The name of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example' # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
}

begin
  #Get recent logs of the projects
  result = api_instance.get_logs(project_name, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectApi->get_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]

### Return type

[**Array&lt;AuditLog&gt;**](AuditLog.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_project**
> Project get_project(project_id, opts)

Return specific project detail information

This endpoint returns specific project information by project ID.

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

api_instance = Harbor2Client::ProjectApi.new

project_id = 789 # Integer | The ID of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Return specific project detail information
  result = api_instance.get_project(project_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectApi->get_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| The ID of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_project_deletable**
> ProjectDeletable get_project_deletable(project_id, opts)

Get the deletable status of the project

Get the deletable status of the project

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

api_instance = Harbor2Client::ProjectApi.new

project_id = 789 # Integer | The ID of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the deletable status of the project
  result = api_instance.get_project_deletable(project_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectApi->get_project_deletable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| The ID of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**ProjectDeletable**](ProjectDeletable.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_project_summary**
> ProjectSummary get_project_summary(project_id, opts)

Get summary of the project.

Get summary of the project.

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

api_instance = Harbor2Client::ProjectApi.new

project_id = 789 # Integer | The ID of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get summary of the project.
  result = api_instance.get_project_summary(project_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectApi->get_project_summary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| The ID of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**ProjectSummary**](ProjectSummary.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **head_project**
> head_project(project_name, opts)

Check if the project name user provided already exists.

This endpoint is used to check if the project name provided already exist.

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

api_instance = Harbor2Client::ProjectApi.new

project_name = 'project_name_example' # String | Project name for checking exists.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Check if the project name user provided already exists.
  api_instance.head_project(project_name, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectApi->head_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| Project name for checking exists. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_projects**
> Array&lt;Project&gt; list_projects(opts)

List projects

This endpoint returns projects created by Harbor.

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

api_instance = Harbor2Client::ProjectApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  name: 'name_example', # String | The name of project.
  public: true, # BOOLEAN | The project is public or private.
  owner: 'owner_example' # String | The name of project owner.
}

begin
  #List projects
  result = api_instance.list_projects(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectApi->list_projects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **name** | **String**| The name of project. | [optional] 
 **public** | **BOOLEAN**| The project is public or private. | [optional] 
 **owner** | **String**| The name of project owner. | [optional] 

### Return type

[**Array&lt;Project&gt;**](Project.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_project**
> update_project(project_idproject, opts)

Update properties for a selected project.

This endpoint is aimed to update the properties of a project.

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

api_instance = Harbor2Client::ProjectApi.new

project_id = 789 # Integer | The ID of the project

project = Harbor2Client::ProjectReq.new # ProjectReq | Updates of project.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update properties for a selected project.
  api_instance.update_project(project_idproject, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectApi->update_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| The ID of the project | 
 **project** | [**ProjectReq**](ProjectReq.md)| Updates of project. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



