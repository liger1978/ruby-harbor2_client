# Harbor2Client::ProjectMetadataApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_project_metadatas**](ProjectMetadataApi.md#add_project_metadatas) | **POST** /projects/{project_name_or_id}/metadatas/ | Add metadata for the specific project
[**delete_project_metadata**](ProjectMetadataApi.md#delete_project_metadata) | **DELETE** /projects/{project_name_or_id}/metadatas/{meta_name} | Delete the specific metadata for the specific project
[**get_project_metadata**](ProjectMetadataApi.md#get_project_metadata) | **GET** /projects/{project_name_or_id}/metadatas/{meta_name} | Get the specific metadata of the specific project
[**list_project_metadatas**](ProjectMetadataApi.md#list_project_metadatas) | **GET** /projects/{project_name_or_id}/metadatas/ | Get the metadata of the specific project
[**update_project_metadata**](ProjectMetadataApi.md#update_project_metadata) | **PUT** /projects/{project_name_or_id}/metadatas/{meta_name} | Update the specific metadata for the specific project


# **add_project_metadatas**
> add_project_metadatas(project_name_or_id, opts)

Add metadata for the specific project

Add metadata for the specific project

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

api_instance = Harbor2Client::ProjectMetadataApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  metadata: nil # Object | 
}

begin
  #Add metadata for the specific project
  api_instance.add_project_metadatas(project_name_or_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectMetadataApi->add_project_metadatas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]
 **metadata** | **Object**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_project_metadata**
> delete_project_metadata(project_name_or_idmeta_name, opts)

Delete the specific metadata for the specific project

Delete the specific metadata for the specific project

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

api_instance = Harbor2Client::ProjectMetadataApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

meta_name = 'meta_name_example' # String | The name of metadata.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Delete the specific metadata for the specific project
  api_instance.delete_project_metadata(project_name_or_idmeta_name, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectMetadataApi->delete_project_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **meta_name** | **String**| The name of metadata. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_project_metadata**
> Hash&lt;String, String&gt; get_project_metadata(project_name_or_idmeta_name, opts)

Get the specific metadata of the specific project

Get the specific metadata of the specific project

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

api_instance = Harbor2Client::ProjectMetadataApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

meta_name = 'meta_name_example' # String | The name of metadata.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Get the specific metadata of the specific project
  result = api_instance.get_project_metadata(project_name_or_idmeta_name, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectMetadataApi->get_project_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **meta_name** | **String**| The name of metadata. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_project_metadatas**
> Hash&lt;String, String&gt; list_project_metadatas(project_name_or_id, opts)

Get the metadata of the specific project

Get the metadata of the specific project

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

api_instance = Harbor2Client::ProjectMetadataApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Get the metadata of the specific project
  result = api_instance.list_project_metadatas(project_name_or_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectMetadataApi->list_project_metadatas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_project_metadata**
> update_project_metadata(project_name_or_idmeta_name, opts)

Update the specific metadata for the specific project

Update the specific metadata for the specific project

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

api_instance = Harbor2Client::ProjectMetadataApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

meta_name = 'meta_name_example' # String | The name of metadata.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  metadata: nil # Object | 
}

begin
  #Update the specific metadata for the specific project
  api_instance.update_project_metadata(project_name_or_idmeta_name, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ProjectMetadataApi->update_project_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **meta_name** | **String**| The name of metadata. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]
 **metadata** | **Object**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



