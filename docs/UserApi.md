# Harbor2Client::UserApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UserApi.md#create_user) | **POST** /users | Create a local user.
[**delete_user**](UserApi.md#delete_user) | **DELETE** /users/{user_id} | Mark a registered user as be removed.
[**get_current_user_info**](UserApi.md#get_current_user_info) | **GET** /users/current | Get current user info.
[**get_current_user_permissions**](UserApi.md#get_current_user_permissions) | **GET** /users/current/permissions | Get current user permissions.
[**get_user**](UserApi.md#get_user) | **GET** /users/{user_id} | Get a user&#39;s profile.
[**list_users**](UserApi.md#list_users) | **GET** /users | List users
[**search_users**](UserApi.md#search_users) | **GET** /users/search | Search users by username
[**set_cli_secret**](UserApi.md#set_cli_secret) | **PUT** /users/{user_id}/cli_secret | Set CLI secret for a user.
[**set_user_sys_admin**](UserApi.md#set_user_sys_admin) | **PUT** /users/{user_id}/sysadmin | Update a registered user to change to be an administrator of Harbor.
[**update_user_password**](UserApi.md#update_user_password) | **PUT** /users/{user_id}/password | Change the password on a user that already exists.
[**update_user_profile**](UserApi.md#update_user_profile) | **PUT** /users/{user_id} | Update user&#39;s profile.


# **create_user**
> create_user(user_req, opts)

Create a local user.

This API can be used only when the authentication mode is for local DB.  When self registration is disabled.

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

api_instance = Harbor2Client::UserApi.new

user_req = Harbor2Client::UserCreationReq.new # UserCreationReq | The new user

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create a local user.
  api_instance.create_user(user_req, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->create_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_req** | [**UserCreationReq**](UserCreationReq.md)| The new user | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_user**
> delete_user(user_id, opts)

Mark a registered user as be removed.

This endpoint let administrator of Harbor mark a registered user as removed.It actually won't be deleted from DB. 

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

api_instance = Harbor2Client::UserApi.new

user_id = 56 # Integer | User ID for marking as to be removed.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Mark a registered user as be removed.
  api_instance.delete_user(user_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User ID for marking as to be removed. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_current_user_info**
> UserResp get_current_user_info(opts)

Get current user info.

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

api_instance = Harbor2Client::UserApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get current user info.
  result = api_instance.get_current_user_info(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->get_current_user_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**UserResp**](UserResp.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_current_user_permissions**
> Array&lt;Permission&gt; get_current_user_permissions(opts)

Get current user permissions.

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

api_instance = Harbor2Client::UserApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  scope: 'scope_example', # String | The scope for the permission
  relative: true # BOOLEAN | If true, the resources in the response are relative to the scope, eg for resource '/project/1/repository' if relative is 'true' then the resource in response will be 'repository'. 
}

begin
  #Get current user permissions.
  result = api_instance.get_current_user_permissions(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->get_current_user_permissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **scope** | **String**| The scope for the permission | [optional] 
 **relative** | **BOOLEAN**| If true, the resources in the response are relative to the scope, eg for resource &#39;/project/1/repository&#39; if relative is &#39;true&#39; then the resource in response will be &#39;repository&#39;.  | [optional] 

### Return type

[**Array&lt;Permission&gt;**](Permission.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user**
> UserResp get_user(user_id, opts)

Get a user's profile.

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

api_instance = Harbor2Client::UserApi.new

user_id = 56 # Integer | 

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get a user's profile.
  result = api_instance.get_user(user_id, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**|  | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**UserResp**](UserResp.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_users**
> Array&lt;UserResp&gt; list_users(opts)

List users

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

api_instance = Harbor2Client::UserApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
}

begin
  #List users
  result = api_instance.list_users(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->list_users: #{e}"
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

[**Array&lt;UserResp&gt;**](UserResp.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_users**
> Array&lt;UserSearchRespItem&gt; search_users(username, opts)

Search users by username

This endpoint is to search the users by username.  It's open for all authenticated requests. 

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

api_instance = Harbor2Client::UserApi.new

username = 'username_example' # String | Username for filtering results.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
}

begin
  #Search users by username
  result = api_instance.search_users(username, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->search_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username for filtering results. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]

### Return type

[**Array&lt;UserSearchRespItem&gt;**](UserSearchRespItem.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_cli_secret**
> set_cli_secret(user_id, secret, opts)

Set CLI secret for a user.

This endpoint let user generate a new CLI secret for himself.  This API only works when auth mode is set to 'OIDC'. Once this API returns with successful status, the old secret will be invalid, as there will be only one CLI secret for a user.

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

api_instance = Harbor2Client::UserApi.new

user_id = 56 # Integer | User ID

secret = Harbor2Client::OIDCCliSecretReq.new # OIDCCliSecretReq | 

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Set CLI secret for a user.
  api_instance.set_cli_secret(user_id, secret, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->set_cli_secret: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User ID | 
 **secret** | [**OIDCCliSecretReq**](OIDCCliSecretReq.md)|  | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_user_sys_admin**
> set_user_sys_admin(user_id, sysadmin_flag, opts)

Update a registered user to change to be an administrator of Harbor.

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

api_instance = Harbor2Client::UserApi.new

user_id = 56 # Integer | 

sysadmin_flag = Harbor2Client::UserSysAdminFlag.new # UserSysAdminFlag | Toggle a user to admin or not.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update a registered user to change to be an administrator of Harbor.
  api_instance.set_user_sys_admin(user_id, sysadmin_flag, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->set_user_sys_admin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**|  | 
 **sysadmin_flag** | [**UserSysAdminFlag**](UserSysAdminFlag.md)| Toggle a user to admin or not. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_password**
> update_user_password(user_id, password, opts)

Change the password on a user that already exists.

This endpoint is for user to update password. Users with the admin role can change any user's password. Regular users can change only their own password. 

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

api_instance = Harbor2Client::UserApi.new

user_id = 56 # Integer | 

password = Harbor2Client::PasswordReq.new # PasswordReq | Password to be updated, the attribute 'old_password' is optional when the API is called by the system administrator.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Change the password on a user that already exists.
  api_instance.update_user_password(user_id, password, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->update_user_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**|  | 
 **password** | [**PasswordReq**](PasswordReq.md)| Password to be updated, the attribute &#39;old_password&#39; is optional when the API is called by the system administrator. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_profile**
> update_user_profile(user_id, profile, opts)

Update user's profile.

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

api_instance = Harbor2Client::UserApi.new

user_id = 56 # Integer | Registered user ID

profile = Harbor2Client::UserProfile.new # UserProfile | Only email, realname and comment can be modified.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update user's profile.
  api_instance.update_user_profile(user_id, profile, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling UserApi->update_user_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| Registered user ID | 
 **profile** | [**UserProfile**](UserProfile.md)| Only email, realname and comment can be modified. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



