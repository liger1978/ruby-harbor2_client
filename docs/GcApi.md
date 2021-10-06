# Harbor2Client::GcApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_gc_schedule**](GcApi.md#create_gc_schedule) | **POST** /system/gc/schedule | Create a gc schedule.
[**get_gc**](GcApi.md#get_gc) | **GET** /system/gc/{gc_id} | Get gc status.
[**get_gc_history**](GcApi.md#get_gc_history) | **GET** /system/gc | Get gc results.
[**get_gc_log**](GcApi.md#get_gc_log) | **GET** /system/gc/{gc_id}/log | Get gc job log.
[**get_gc_schedule**](GcApi.md#get_gc_schedule) | **GET** /system/gc/schedule | Get gc&#39;s schedule.
[**update_gc_schedule**](GcApi.md#update_gc_schedule) | **PUT** /system/gc/schedule | Update gc&#39;s schedule.


# **create_gc_schedule**
> create_gc_schedule(schedule, opts)

Create a gc schedule.

This endpoint is for update gc schedule. 

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

api_instance = Harbor2Client::GcApi.new

schedule = Harbor2Client::Schedule.new # Schedule | Updates of gc's schedule.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create a gc schedule.
  api_instance.create_gc_schedule(schedule, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling GcApi->create_gc_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | [**Schedule**](Schedule.md)| Updates of gc&#39;s schedule. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_gc**
> GCHistory get_gc(gc_id, opts)

Get gc status.

This endpoint let user get gc status filtered by specific ID.

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

api_instance = Harbor2Client::GcApi.new

gc_id = 789 # Integer | The ID of the gc log

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get gc status.
  result = api_instance.get_gc(gc_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling GcApi->get_gc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gc_id** | **Integer**| The ID of the gc log | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**GCHistory**](GCHistory.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_gc_history**
> Array&lt;GCHistory&gt; get_gc_history(opts)

Get gc results.

This endpoint let user get gc execution history.

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

api_instance = Harbor2Client::GcApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
}

begin
  #Get gc results.
  result = api_instance.get_gc_history(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling GcApi->get_gc_history: #{e}"
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

### Return type

[**Array&lt;GCHistory&gt;**](GCHistory.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_gc_log**
> String get_gc_log(gc_id, opts)

Get gc job log.

This endpoint let user get gc job logs filtered by specific ID.

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

api_instance = Harbor2Client::GcApi.new

gc_id = 789 # Integer | The ID of the gc log

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get gc job log.
  result = api_instance.get_gc_log(gc_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling GcApi->get_gc_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gc_id** | **Integer**| The ID of the gc log | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

**String**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **get_gc_schedule**
> GCHistory get_gc_schedule(opts)

Get gc's schedule.

This endpoint is for get schedule of gc job.

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

api_instance = Harbor2Client::GcApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get gc's schedule.
  result = api_instance.get_gc_schedule(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling GcApi->get_gc_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**GCHistory**](GCHistory.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_gc_schedule**
> update_gc_schedule(schedule, opts)

Update gc's schedule.

This endpoint is for update gc schedule. 

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

api_instance = Harbor2Client::GcApi.new

schedule = Harbor2Client::Schedule.new # Schedule | Updates of gc's schedule.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update gc's schedule.
  api_instance.update_gc_schedule(schedule, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling GcApi->update_gc_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | [**Schedule**](Schedule.md)| Updates of gc&#39;s schedule. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



