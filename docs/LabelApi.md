# Harbor2Client::LabelApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_label**](LabelApi.md#create_label) | **POST** /labels | Post creates a label
[**delete_label**](LabelApi.md#delete_label) | **DELETE** /labels/{label_id} | Delete the label specified by ID.
[**get_label_by_id**](LabelApi.md#get_label_by_id) | **GET** /labels/{label_id} | Get the label specified by ID.
[**list_labels**](LabelApi.md#list_labels) | **GET** /labels | List labels according to the query strings.
[**update_label**](LabelApi.md#update_label) | **PUT** /labels/{label_id} | Update the label properties.


# **create_label**
> create_label(label, opts)

Post creates a label

This endpoint let user creates a label. 

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

api_instance = Harbor2Client::LabelApi.new

label = Harbor2Client::Label.new # Label | The json object of label.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Post creates a label
  api_instance.create_label(label, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling LabelApi->create_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label** | [**Label**](Label.md)| The json object of label. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_label**
> delete_label(label_id, opts)

Delete the label specified by ID.

Delete the label specified by ID. 

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

api_instance = Harbor2Client::LabelApi.new

label_id = 789 # Integer | Label ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete the label specified by ID.
  api_instance.delete_label(label_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling LabelApi->delete_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **Integer**| Label ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_label_by_id**
> Label get_label_by_id(label_id, opts)

Get the label specified by ID.

This endpoint let user get the label by specific ID. 

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

api_instance = Harbor2Client::LabelApi.new

label_id = 789 # Integer | Label ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the label specified by ID.
  result = api_instance.get_label_by_id(label_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling LabelApi->get_label_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **Integer**| Label ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Label**](Label.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_labels**
> Array&lt;Label&gt; list_labels(opts)

List labels according to the query strings.

This endpoint let user list labels by name, scope and project_id 

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

api_instance = Harbor2Client::LabelApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  name: 'name_example', # String | The label name.
  scope: 'scope_example', # String | The label scope. Valid values are g and p. g for global labels and p for project labels.
  project_id: 789 # Integer | Relevant project ID, required when scope is p.
}

begin
  #List labels according to the query strings.
  result = api_instance.list_labels(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling LabelApi->list_labels: #{e}"
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
 **name** | **String**| The label name. | [optional] 
 **scope** | **String**| The label scope. Valid values are g and p. g for global labels and p for project labels. | [optional] 
 **project_id** | **Integer**| Relevant project ID, required when scope is p. | [optional] 

### Return type

[**Array&lt;Label&gt;**](Label.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_label**
> update_label(label_idlabel, opts)

Update the label properties.

This endpoint let user update label properties. 

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

api_instance = Harbor2Client::LabelApi.new

label_id = 789 # Integer | Label ID

label = Harbor2Client::Label.new # Label | The updated label json object.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update the label properties.
  api_instance.update_label(label_idlabel, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling LabelApi->update_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **Integer**| Label ID | 
 **label** | [**Label**](Label.md)| The updated label json object. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



