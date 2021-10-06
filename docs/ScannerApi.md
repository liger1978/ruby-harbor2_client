# Harbor2Client::ScannerApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_scanner**](ScannerApi.md#create_scanner) | **POST** /scanners | Create a scanner registration
[**delete_scanner**](ScannerApi.md#delete_scanner) | **DELETE** /scanners/{registration_id} | Delete a scanner registration
[**get_scanner**](ScannerApi.md#get_scanner) | **GET** /scanners/{registration_id} | Get a scanner registration details
[**get_scanner_metadata**](ScannerApi.md#get_scanner_metadata) | **GET** /scanners/{registration_id}/metadata | Get the metadata of the specified scanner registration
[**list_scanners**](ScannerApi.md#list_scanners) | **GET** /scanners | List scanner registrations
[**ping_scanner**](ScannerApi.md#ping_scanner) | **POST** /scanners/ping | Tests scanner registration settings
[**set_scanner_as_default**](ScannerApi.md#set_scanner_as_default) | **PATCH** /scanners/{registration_id} | Set system default scanner registration
[**update_scanner**](ScannerApi.md#update_scanner) | **PUT** /scanners/{registration_id} | Update a scanner registration


# **create_scanner**
> create_scanner(registration, opts)

Create a scanner registration

Creats a new scanner registration with the given data. 

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

api_instance = Harbor2Client::ScannerApi.new

registration = Harbor2Client::ScannerRegistrationReq.new # ScannerRegistrationReq | A scanner registration to be created.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create a scanner registration
  api_instance.create_scanner(registration, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScannerApi->create_scanner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration** | [**ScannerRegistrationReq**](ScannerRegistrationReq.md)| A scanner registration to be created. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_scanner**
> ScannerRegistration delete_scanner(registration_id, opts)

Delete a scanner registration

Deletes the specified scanner registration. 

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

api_instance = Harbor2Client::ScannerApi.new

registration_id = 'registration_id_example' # String | The scanner registration identifier.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete a scanner registration
  result = api_instance.delete_scanner(registration_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScannerApi->delete_scanner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| The scanner registration identifier. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**ScannerRegistration**](ScannerRegistration.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_scanner**
> ScannerRegistration get_scanner(registration_id, opts)

Get a scanner registration details

Retruns the details of the specified scanner registration. 

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

api_instance = Harbor2Client::ScannerApi.new

registration_id = 'registration_id_example' # String | The scanner registration identifer.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get a scanner registration details
  result = api_instance.get_scanner(registration_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScannerApi->get_scanner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| The scanner registration identifer. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**ScannerRegistration**](ScannerRegistration.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_scanner_metadata**
> ScannerAdapterMetadata get_scanner_metadata(registration_id, opts)

Get the metadata of the specified scanner registration

Get the metadata of the specified scanner registration, including the capabilities and customized properties. 

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

api_instance = Harbor2Client::ScannerApi.new

registration_id = 'registration_id_example' # String | The scanner registration identifier.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the metadata of the specified scanner registration
  result = api_instance.get_scanner_metadata(registration_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScannerApi->get_scanner_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| The scanner registration identifier. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**ScannerAdapterMetadata**](ScannerAdapterMetadata.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_scanners**
> Array&lt;ScannerRegistration&gt; list_scanners(opts)

List scanner registrations

Returns a list of currently configured scanner registrations. 

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

api_instance = Harbor2Client::ScannerApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
}

begin
  #List scanner registrations
  result = api_instance.list_scanners(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScannerApi->list_scanners: #{e}"
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

[**Array&lt;ScannerRegistration&gt;**](ScannerRegistration.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ping_scanner**
> ping_scanner(settings, opts)

Tests scanner registration settings

Pings scanner adapter to test endpoint URL and authorization settings. 

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

api_instance = Harbor2Client::ScannerApi.new

settings = Harbor2Client::ScannerRegistrationSettings.new # ScannerRegistrationSettings | A scanner registration settings to be tested.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Tests scanner registration settings
  api_instance.ping_scanner(settings, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScannerApi->ping_scanner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settings** | [**ScannerRegistrationSettings**](ScannerRegistrationSettings.md)| A scanner registration settings to be tested. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_scanner_as_default**
> set_scanner_as_default(registration_id, payload, opts)

Set system default scanner registration

Set the specified scanner registration as the system default one. 

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

api_instance = Harbor2Client::ScannerApi.new

registration_id = 'registration_id_example' # String | The scanner registration identifier.

payload = Harbor2Client::IsDefault.new # IsDefault | 

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Set system default scanner registration
  api_instance.set_scanner_as_default(registration_id, payload, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScannerApi->set_scanner_as_default: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| The scanner registration identifier. | 
 **payload** | [**IsDefault**](IsDefault.md)|  | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_scanner**
> update_scanner(registration_id, registration, opts)

Update a scanner registration

Updates the specified scanner registration. 

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

api_instance = Harbor2Client::ScannerApi.new

registration_id = 'registration_id_example' # String | The scanner registration identifier.

registration = Harbor2Client::ScannerRegistrationReq.new # ScannerRegistrationReq | A scanner registraiton to be updated.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update a scanner registration
  api_instance.update_scanner(registration_id, registration, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ScannerApi->update_scanner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| The scanner registration identifier. | 
 **registration** | [**ScannerRegistrationReq**](ScannerRegistrationReq.md)| A scanner registraiton to be updated. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



