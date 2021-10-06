# Harbor2Client::ScanAllApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_scan_all_schedule**](ScanAllApi.md#create_scan_all_schedule) | **POST** /system/scanAll/schedule | Create a schedule or a manual trigger for the scan all job.
[**get_latest_scan_all_metrics**](ScanAllApi.md#get_latest_scan_all_metrics) | **GET** /scans/all/metrics | Get the metrics of the latest scan all process
[**get_latest_scheduled_scan_all_metrics**](ScanAllApi.md#get_latest_scheduled_scan_all_metrics) | **GET** /scans/schedule/metrics | Get the metrics of the latest scheduled scan all process
[**get_scan_all_schedule**](ScanAllApi.md#get_scan_all_schedule) | **GET** /system/scanAll/schedule | Get scan all&#39;s schedule.
[**update_scan_all_schedule**](ScanAllApi.md#update_scan_all_schedule) | **PUT** /system/scanAll/schedule | Update scan all&#39;s schedule.


# **create_scan_all_schedule**
> create_scan_all_schedule(schedule, opts)

Create a schedule or a manual trigger for the scan all job.

This endpoint is for creating a schedule or a manual trigger for the scan all job, which scans all of images in Harbor.

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

api_instance = Harbor2Client::ScanAllApi.new

schedule = Harbor2Client::Schedule.new # Schedule | Create a schedule or a manual trigger for the scan all job.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create a schedule or a manual trigger for the scan all job.
  api_instance.create_scan_all_schedule(schedule, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScanAllApi->create_scan_all_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | [**Schedule**](Schedule.md)| Create a schedule or a manual trigger for the scan all job. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_latest_scan_all_metrics**
> Stats get_latest_scan_all_metrics(opts)

Get the metrics of the latest scan all process

Get the metrics of the latest scan all process

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

api_instance = Harbor2Client::ScanAllApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the metrics of the latest scan all process
  result = api_instance.get_latest_scan_all_metrics(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScanAllApi->get_latest_scan_all_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Stats**](Stats.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_latest_scheduled_scan_all_metrics**
> Stats get_latest_scheduled_scan_all_metrics(opts)

Get the metrics of the latest scheduled scan all process

Get the metrics of the latest scheduled scan all process

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

api_instance = Harbor2Client::ScanAllApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the metrics of the latest scheduled scan all process
  result = api_instance.get_latest_scheduled_scan_all_metrics(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScanAllApi->get_latest_scheduled_scan_all_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Stats**](Stats.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_scan_all_schedule**
> Schedule get_scan_all_schedule(opts)

Get scan all's schedule.

This endpoint is for getting a schedule for the scan all job, which scans all of images in Harbor.

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

api_instance = Harbor2Client::ScanAllApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get scan all's schedule.
  result = api_instance.get_scan_all_schedule(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScanAllApi->get_scan_all_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Schedule**](Schedule.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_scan_all_schedule**
> update_scan_all_schedule(schedule, opts)

Update scan all's schedule.

This endpoint is for updating the schedule of scan all job, which scans all of images in Harbor.

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

api_instance = Harbor2Client::ScanAllApi.new

schedule = Harbor2Client::Schedule.new # Schedule | Updates the schedule of scan all job, which scans all of images in Harbor.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update scan all's schedule.
  api_instance.update_scan_all_schedule(schedule, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScanAllApi->update_scan_all_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | [**Schedule**](Schedule.md)| Updates the schedule of scan all job, which scans all of images in Harbor. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



