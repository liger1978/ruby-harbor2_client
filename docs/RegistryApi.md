# Harbor2Client::RegistryApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_registry**](RegistryApi.md#create_registry) | **POST** /registries | Create a registry
[**delete_registry**](RegistryApi.md#delete_registry) | **DELETE** /registries/{id} | Delete the specific registry
[**get_registry**](RegistryApi.md#get_registry) | **GET** /registries/{id} | Get the specific registry
[**get_registry_info**](RegistryApi.md#get_registry_info) | **GET** /registries/{id}/info | Get the registry info
[**list_registries**](RegistryApi.md#list_registries) | **GET** /registries | List the registries
[**list_registry_provider_infos**](RegistryApi.md#list_registry_provider_infos) | **GET** /replication/adapterinfos | List all registered registry provider information
[**list_registry_provider_types**](RegistryApi.md#list_registry_provider_types) | **GET** /replication/adapters | List registry adapters
[**ping_registry**](RegistryApi.md#ping_registry) | **POST** /registries/ping | Check status of a registry
[**update_registry**](RegistryApi.md#update_registry) | **PUT** /registries/{id} | Update the registry


# **create_registry**
> create_registry(registry, opts)

Create a registry

Create a registry

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

api_instance = Harbor2Client::RegistryApi.new

registry = Harbor2Client::Registry.new # Registry | The registry

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create a registry
  api_instance.create_registry(registry, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RegistryApi->create_registry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | [**Registry**](Registry.md)| The registry | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_registry**
> delete_registry(id, opts)

Delete the specific registry

Delete the specific registry

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

api_instance = Harbor2Client::RegistryApi.new

id = 789 # Integer | Registry ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete the specific registry
  api_instance.delete_registry(id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RegistryApi->delete_registry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Registry ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registry**
> Registry get_registry(id, opts)

Get the specific registry

Get the specific registry

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

api_instance = Harbor2Client::RegistryApi.new

id = 789 # Integer | Registry ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the specific registry
  result = api_instance.get_registry(id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RegistryApi->get_registry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Registry ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Registry**](Registry.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registry_info**
> RegistryInfo get_registry_info(id, opts)

Get the registry info

Get the registry info

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

api_instance = Harbor2Client::RegistryApi.new

id = 789 # Integer | Registry ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the registry info
  result = api_instance.get_registry_info(id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RegistryApi->get_registry_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Registry ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**RegistryInfo**](RegistryInfo.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_registries**
> Array&lt;Registry&gt; list_registries(opts)

List the registries

List the registries

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

api_instance = Harbor2Client::RegistryApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  name: 'name_example' # String | Deprecated, use `q` instead.
}

begin
  #List the registries
  result = api_instance.list_registries(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RegistryApi->list_registries: #{e}"
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
 **name** | **String**| Deprecated, use &#x60;q&#x60; instead. | [optional] 

### Return type

[**Array&lt;Registry&gt;**](Registry.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_registry_provider_infos**
> Hash&lt;String, RegistryProviderInfo&gt; list_registry_provider_infos(opts)

List all registered registry provider information

List all registered registry provider information

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

api_instance = Harbor2Client::RegistryApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #List all registered registry provider information
  result = api_instance.list_registry_provider_infos(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RegistryApi->list_registry_provider_infos: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Hash&lt;String, RegistryProviderInfo&gt;**](RegistryProviderInfo.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_registry_provider_types**
> Array&lt;String&gt; list_registry_provider_types(opts)

List registry adapters

List registry adapters

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

api_instance = Harbor2Client::RegistryApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #List registry adapters
  result = api_instance.list_registry_provider_types(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RegistryApi->list_registry_provider_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

**Array&lt;String&gt;**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ping_registry**
> ping_registry(registry, opts)

Check status of a registry

Check status of a registry

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

api_instance = Harbor2Client::RegistryApi.new

registry = Harbor2Client::RegistryPing.new # RegistryPing | The registry

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Check status of a registry
  api_instance.ping_registry(registry, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RegistryApi->ping_registry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | [**RegistryPing**](RegistryPing.md)| The registry | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_registry**
> update_registry(id, registry, opts)

Update the registry

Update the registry

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

api_instance = Harbor2Client::RegistryApi.new

id = 789 # Integer | The registry ID

registry = Harbor2Client::RegistryUpdate.new # RegistryUpdate | The registry

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update the registry
  api_instance.update_registry(id, registry, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RegistryApi->update_registry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The registry ID | 
 **registry** | [**RegistryUpdate**](RegistryUpdate.md)| The registry | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



