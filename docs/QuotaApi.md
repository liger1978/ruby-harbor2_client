# Harbor2Client::QuotaApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_quota**](QuotaApi.md#get_quota) | **GET** /quotas/{id} | Get the specified quota
[**list_quotas**](QuotaApi.md#list_quotas) | **GET** /quotas | List quotas
[**update_quota**](QuotaApi.md#update_quota) | **PUT** /quotas/{id} | Update the specified quota


# **get_quota**
> Quota get_quota(id, opts)

Get the specified quota

Get the specified quota

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

api_instance = Harbor2Client::QuotaApi.new

id = 56 # Integer | Quota ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the specified quota
  result = api_instance.get_quota(id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling QuotaApi->get_quota: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Quota ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Quota**](Quota.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_quotas**
> Array&lt;Quota&gt; list_quotas(opts)

List quotas

List quotas

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

api_instance = Harbor2Client::QuotaApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  reference: 'reference_example', # String | The reference type of quota.
  reference_id: 'reference_id_example', # String | The reference id of quota.
  sort: 'sort_example' # String | Sort method, valid values include: 'hard.resource_name', '-hard.resource_name', 'used.resource_name', '-used.resource_name'. Here '-' stands for descending order, resource_name should be the real resource name of the quota. 
}

begin
  #List quotas
  result = api_instance.list_quotas(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling QuotaApi->list_quotas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **reference** | **String**| The reference type of quota. | [optional] 
 **reference_id** | **String**| The reference id of quota. | [optional] 
 **sort** | **String**| Sort method, valid values include: &#39;hard.resource_name&#39;, &#39;-hard.resource_name&#39;, &#39;used.resource_name&#39;, &#39;-used.resource_name&#39;. Here &#39;-&#39; stands for descending order, resource_name should be the real resource name of the quota.  | [optional] 

### Return type

[**Array&lt;Quota&gt;**](Quota.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_quota**
> update_quota(id, hard, opts)

Update the specified quota

Update hard limits of the specified quota

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

api_instance = Harbor2Client::QuotaApi.new

id = 56 # Integer | Quota ID

hard = Harbor2Client::QuotaUpdateReq.new # QuotaUpdateReq | The new hard limits for the quota

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update the specified quota
  api_instance.update_quota(id, hard, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling QuotaApi->update_quota: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Quota ID | 
 **hard** | [**QuotaUpdateReq**](QuotaUpdateReq.md)| The new hard limits for the quota | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



