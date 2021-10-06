# Harbor2Client::UsergroupApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user_group**](UsergroupApi.md#create_user_group) | **POST** /usergroups | Create user group
[**delete_user_group**](UsergroupApi.md#delete_user_group) | **DELETE** /usergroups/{group_id} | Delete user group
[**get_user_group**](UsergroupApi.md#get_user_group) | **GET** /usergroups/{group_id} | Get user group information
[**list_user_groups**](UsergroupApi.md#list_user_groups) | **GET** /usergroups | Get all user groups information
[**update_user_group**](UsergroupApi.md#update_user_group) | **PUT** /usergroups/{group_id} | Update group information


# **create_user_group**
> create_user_group(opts)

Create user group

Create user group information

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

api_instance = Harbor2Client::UsergroupApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  usergroup: Harbor2Client::UserGroup.new # UserGroup | 
}

begin
  #Create user group
  api_instance.create_user_group(opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UsergroupApi->create_user_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **usergroup** | [**UserGroup**](UserGroup.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_user_group**
> delete_user_group(group_id, opts)

Delete user group

Delete user group

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

api_instance = Harbor2Client::UsergroupApi.new

group_id = 56 # Integer | 

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete user group
  api_instance.delete_user_group(group_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UsergroupApi->delete_user_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**|  | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_group**
> UserGroup get_user_group(group_id, opts)

Get user group information

Get user group information

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

api_instance = Harbor2Client::UsergroupApi.new

group_id = 789 # Integer | Group ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get user group information
  result = api_instance.get_user_group(group_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UsergroupApi->get_user_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**| Group ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_user_groups**
> Array&lt;UserGroup&gt; list_user_groups(opts)

Get all user groups information

Get all user groups information

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

api_instance = Harbor2Client::UsergroupApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get all user groups information
  result = api_instance.list_user_groups(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UsergroupApi->list_user_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Array&lt;UserGroup&gt;**](UserGroup.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_group**
> update_user_group(group_id, opts)

Update group information

Update user group information

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

api_instance = Harbor2Client::UsergroupApi.new

group_id = 789 # Integer | Group ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  usergroup: Harbor2Client::UserGroup.new # UserGroup | 
}

begin
  #Update group information
  api_instance.update_user_group(group_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UsergroupApi->update_user_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**| Group ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **usergroup** | [**UserGroup**](UserGroup.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



