# Harbor2Client::SearchApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SearchApi.md#search) | **GET** /search | Search for projects, repositories and helm charts


# **search**
> Search search(q, opts)

Search for projects, repositories and helm charts

The Search endpoint returns information about the projects, repositories and helm charts offered at public status or related to the current logged in user. The response includes the project, repository list and charts in a proper display order.

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

api_instance = Harbor2Client::SearchApi.new

q = 'q_example' # String | Search parameter for project and repository name.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Search for projects, repositories and helm charts
  result = api_instance.search(q, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling SearchApi->search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search parameter for project and repository name. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Search**](Search.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



