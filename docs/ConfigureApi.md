# Harbor2Client::ConfigureApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_configurations**](ConfigureApi.md#get_configurations) | **GET** /configurations | Get system configurations.
[**get_internalconfig**](ConfigureApi.md#get_internalconfig) | **GET** /internalconfig | Get internal configurations.
[**update_configurations**](ConfigureApi.md#update_configurations) | **PUT** /configurations | Modify system configurations.


# **get_configurations**
> ConfigurationsResponse get_configurations(opts)

Get system configurations.

This endpoint is for retrieving system configurations that only provides for admin user. 

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

api_instance = Harbor2Client::ConfigureApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get system configurations.
  result = api_instance.get_configurations(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ConfigureApi->get_configurations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**ConfigurationsResponse**](ConfigurationsResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_internalconfig**
> InternalConfigurationsResponse get_internalconfig(opts)

Get internal configurations.

This endpoint is for retrieving system configurations that only provides for internal api call. 

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

api_instance = Harbor2Client::ConfigureApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get internal configurations.
  result = api_instance.get_internalconfig(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ConfigureApi->get_internalconfig: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**InternalConfigurationsResponse**](InternalConfigurationsResponse.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_configurations**
> update_configurations(configurations, opts)

Modify system configurations.

This endpoint is for modifying system configurations that only provides for admin user. 

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

api_instance = Harbor2Client::ConfigureApi.new

configurations = Harbor2Client::Configurations.new # Configurations | The configuration map can contain a subset of the attributes of the schema, which are to be updated.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Modify system configurations.
  api_instance.update_configurations(configurations, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ConfigureApi->update_configurations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configurations** | [**Configurations**](Configurations.md)| The configuration map can contain a subset of the attributes of the schema, which are to be updated. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



