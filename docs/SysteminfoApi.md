# Harbor2Client::SysteminfoApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_cert**](SysteminfoApi.md#get_cert) | **GET** /systeminfo/getcert | Get default root certificate.
[**get_system_info**](SysteminfoApi.md#get_system_info) | **GET** /systeminfo | Get general system info
[**get_volumes**](SysteminfoApi.md#get_volumes) | **GET** /systeminfo/volumes | Get system volume info (total/free size).


# **get_cert**
> File get_cert(opts)

Get default root certificate.

This endpoint is for downloading a default root certificate. 

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

api_instance = Harbor2Client::SysteminfoApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get default root certificate.
  result = api_instance.get_cert(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling SysteminfoApi->get_cert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

**File**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream



# **get_system_info**
> GeneralInfo get_system_info(opts)

Get general system info

This API is for retrieving general system info, this can be called by anonymous request.  Some attributes will be omitted in the response when this API is called by anonymous request. 

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

api_instance = Harbor2Client::SysteminfoApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get general system info
  result = api_instance.get_system_info(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling SysteminfoApi->get_system_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**GeneralInfo**](GeneralInfo.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_volumes**
> SystemInfo get_volumes(opts)

Get system volume info (total/free size).

This endpoint is for retrieving system volume info that only provides for admin user.  Note that the response only reflects the storage status of local disk. 

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

api_instance = Harbor2Client::SysteminfoApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get system volume info (total/free size).
  result = api_instance.get_volumes(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling SysteminfoApi->get_volumes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**SystemInfo**](SystemInfo.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



