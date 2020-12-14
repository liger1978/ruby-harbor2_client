# Harbor2Client::IconApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_icon**](IconApi.md#get_icon) | **GET** /icons/{digest} | Get artifact icon


# **get_icon**
> Icon get_icon(digest, opts)

Get artifact icon

Get the artifact icon with the specified digest. As the original icon image is resized and encoded before returning, the parameter \"digest\" in the path doesn't match the hash of the returned content

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

api_instance = Harbor2Client::IconApi.new

digest = 'digest_example' # String | The digest of the resource

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get artifact icon
  result = api_instance.get_icon(digest, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling IconApi->get_icon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **digest** | **String**| The digest of the resource | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Icon**](Icon.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



