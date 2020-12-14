# Harbor2Client::ScanApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_report_log**](ScanApi.md#get_report_log) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/scan/{report_id}/log | Get the log of the scan report
[**scan_artifact**](ScanApi.md#scan_artifact) | **POST** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/scan | Scan the artifact


# **get_report_log**
> String get_report_log(project_namerepository_name, reference, report_id, opts)

Get the log of the scan report

Get the log of the scan report

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

api_instance = Harbor2Client::ScanApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

report_id = 'report_id_example' # String | The report id to get the log

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the log of the scan report
  result = api_instance.get_report_log(project_namerepository_name, reference, report_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScanApi->get_report_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **report_id** | **String**| The report id to get the log | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

**String**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **scan_artifact**
> scan_artifact(project_namerepository_name, reference, , opts)

Scan the artifact

Scan the specified artifact

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

api_instance = Harbor2Client::ScanApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Scan the artifact
  api_instance.scan_artifact(project_namerepository_name, reference, , opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScanApi->scan_artifact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



