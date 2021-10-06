# Harbor2Client::OidcApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ping_oidc**](OidcApi.md#ping_oidc) | **POST** /system/oidc/ping | Test the OIDC endpoint.


# **ping_oidc**
> ping_oidc(endpoint, opts)

Test the OIDC endpoint.

Test the OIDC endpoint, the setting of the endpoint is provided in the request.  This API can only be called by system admin. 

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

api_instance = Harbor2Client::OidcApi.new

endpoint = Harbor2Client::Endpoint.new # Endpoint | Request body for OIDC endpoint to be tested.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Test the OIDC endpoint.
  api_instance.ping_oidc(endpoint, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling OidcApi->ping_oidc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpoint** | [**Endpoint**](Endpoint.md)| Request body for OIDC endpoint to be tested. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



