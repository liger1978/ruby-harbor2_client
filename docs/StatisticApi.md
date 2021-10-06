# Harbor2Client::StatisticApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_statistic**](StatisticApi.md#get_statistic) | **GET** /statistics | Get the statistic information about the projects and repositories


# **get_statistic**
> Statistic get_statistic(opts)

Get the statistic information about the projects and repositories

Get the statistic information about the projects and repositories

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

api_instance = Harbor2Client::StatisticApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the statistic information about the projects and repositories
  result = api_instance.get_statistic(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling StatisticApi->get_statistic: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Statistic**](Statistic.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



