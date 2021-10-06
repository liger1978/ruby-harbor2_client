# Harbor2Client::SystemCVEAllowlistApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_system_cve_allowlist**](SystemCVEAllowlistApi.md#get_system_cve_allowlist) | **GET** /system/CVEAllowlist | Get the system level allowlist of CVE.
[**put_system_cve_allowlist**](SystemCVEAllowlistApi.md#put_system_cve_allowlist) | **PUT** /system/CVEAllowlist | Update the system level allowlist of CVE.


# **get_system_cve_allowlist**
> CVEAllowlist get_system_cve_allowlist(opts)

Get the system level allowlist of CVE.

Get the system level allowlist of CVE.  This API can be called by all authenticated users.

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

api_instance = Harbor2Client::SystemCVEAllowlistApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the system level allowlist of CVE.
  result = api_instance.get_system_cve_allowlist(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling SystemCVEAllowlistApi->get_system_cve_allowlist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**CVEAllowlist**](CVEAllowlist.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_system_cve_allowlist**
> put_system_cve_allowlist(opts)

Update the system level allowlist of CVE.

This API overwrites the system level allowlist of CVE with the list in request body.  Only system Admin has permission to call this API.

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

api_instance = Harbor2Client::SystemCVEAllowlistApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  allowlist: Harbor2Client::CVEAllowlist.new # CVEAllowlist | The allowlist with new content
}

begin
  #Update the system level allowlist of CVE.
  api_instance.put_system_cve_allowlist(opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling SystemCVEAllowlistApi->put_system_cve_allowlist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **allowlist** | [**CVEAllowlist**](CVEAllowlist.md)| The allowlist with new content | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



