# Harbor2Client::MemberApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_project_member**](MemberApi.md#create_project_member) | **POST** /projects/{project_name_or_id}/members | Create project member
[**delete_project_member**](MemberApi.md#delete_project_member) | **DELETE** /projects/{project_name_or_id}/members/{mid} | Delete project member
[**get_project_member**](MemberApi.md#get_project_member) | **GET** /projects/{project_name_or_id}/members/{mid} | Get the project member information
[**list_project_members**](MemberApi.md#list_project_members) | **GET** /projects/{project_name_or_id}/members | Get all project member information
[**update_project_member**](MemberApi.md#update_project_member) | **PUT** /projects/{project_name_or_id}/members/{mid} | Update project member


# **create_project_member**
> create_project_member(project_name_or_id, opts)

Create project member

Create project member relationship, the member can be one of the user_member and group_member,  The user_member need to specify user_id or username. If the user already exist in harbor DB, specify the user_id,  If does not exist in harbor DB, it will SearchAndOnBoard the user. The group_member need to specify id or ldap_group_dn. If the group already exist in harbor DB. specify the user group's id,  If does not exist, it will SearchAndOnBoard the group. 

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

api_instance = Harbor2Client::MemberApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  project_member: Harbor2Client::ProjectMember.new # ProjectMember | 
}

begin
  #Create project member
  api_instance.create_project_member(project_name_or_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling MemberApi->create_project_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]
 **project_member** | [**ProjectMember**](ProjectMember.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_project_member**
> delete_project_member(project_name_or_idmid, opts)

Delete project member

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

api_instance = Harbor2Client::MemberApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

mid = 789 # Integer | Member ID.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Delete project member
  api_instance.delete_project_member(project_name_or_idmid, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling MemberApi->delete_project_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **mid** | **Integer**| Member ID. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_project_member**
> ProjectMemberEntity get_project_member(project_name_or_idmid, opts)

Get the project member information

Get the project member information

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

api_instance = Harbor2Client::MemberApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

mid = 789 # Integer | The member ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
}

begin
  #Get the project member information
  result = api_instance.get_project_member(project_name_or_idmid, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling MemberApi->get_project_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **mid** | **Integer**| The member ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]

### Return type

[**ProjectMemberEntity**](ProjectMemberEntity.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_project_members**
> Array&lt;ProjectMemberEntity&gt; list_project_members(project_name_or_id, opts)

Get all project member information

Get all project member information

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

api_instance = Harbor2Client::MemberApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  entityname: 'entityname_example' # String | The entity name to search.
}

begin
  #Get all project member information
  result = api_instance.list_project_members(project_name_or_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling MemberApi->list_project_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **entityname** | **String**| The entity name to search. | [optional] 

### Return type

[**Array&lt;ProjectMemberEntity&gt;**](ProjectMemberEntity.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_project_member**
> update_project_member(project_name_or_idmid, opts)

Update project member

Update project member relationship

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

api_instance = Harbor2Client::MemberApi.new

project_name_or_id = 'project_name_or_id_example' # String | The name or id of the project

mid = 789 # Integer | Member ID.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_is_resource_name: false # BOOLEAN | The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
  role: Harbor2Client::RoleRequest.new # RoleRequest | 
}

begin
  #Update project member
  api_instance.update_project_member(project_name_or_idmid, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling MemberApi->update_project_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name_or_id** | **String**| The name or id of the project | 
 **mid** | **Integer**| Member ID. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_is_resource_name** | **BOOLEAN**| The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. | [optional] [default to false]
 **role** | [**RoleRequest**](RoleRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



