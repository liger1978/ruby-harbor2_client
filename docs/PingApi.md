# Harbor2Client::PingApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_ping**](PingApi.md#get_ping) | **GET** /ping | Ping Harbor to check if it&#39;s alive.


# **get_ping**
> String get_ping(opts)

Ping Harbor to check if it's alive.

This API simply replies a pong to indicate the process to handle API is up, disregarding the health status of dependent components.

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

api_instance = Harbor2Client::PingApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Ping Harbor to check if it's alive.
  result = api_instance.get_ping(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling PingApi->get_ping: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

**String**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



