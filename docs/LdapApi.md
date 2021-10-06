# Harbor2Client::LdapApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**import_ldap_user**](LdapApi.md#import_ldap_user) | **POST** /ldap/users/import | Import selected available ldap users.
[**ping_ldap**](LdapApi.md#ping_ldap) | **POST** /ldap/ping | Ping available ldap service.
[**search_ldap_group**](LdapApi.md#search_ldap_group) | **GET** /ldap/groups/search | Search available ldap groups.
[**search_ldap_user**](LdapApi.md#search_ldap_user) | **GET** /ldap/users/search | Search available ldap users.


# **import_ldap_user**
> import_ldap_user(uid_list, opts)

Import selected available ldap users.

This endpoint adds the selected available ldap users to harbor based on related configuration parameters from the system. System will try to guess the user email address and realname, add to harbor user information. If have errors when import user, will return the list of importing failed uid and the failed reason. 

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

api_instance = Harbor2Client::LdapApi.new

uid_list = Harbor2Client::LdapImportUsers.new # LdapImportUsers | The uid listed for importing. This list will check users validity of ldap service based on configuration from the system.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Import selected available ldap users.
  api_instance.import_ldap_user(uid_list, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling LdapApi->import_ldap_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid_list** | [**LdapImportUsers**](LdapImportUsers.md)| The uid listed for importing. This list will check users validity of ldap service based on configuration from the system. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ping_ldap**
> LdapPingResult ping_ldap(opts)

Ping available ldap service.

This endpoint ping the available ldap service for test related configuration parameters. 

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

api_instance = Harbor2Client::LdapApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  ldapconf: Harbor2Client::LdapConf.new # LdapConf | ldap configuration. support input ldap service configuration. If it is a empty request, will load current configuration from the system.
}

begin
  #Ping available ldap service.
  result = api_instance.ping_ldap(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling LdapApi->ping_ldap: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **ldapconf** | [**LdapConf**](LdapConf.md)| ldap configuration. support input ldap service configuration. If it is a empty request, will load current configuration from the system. | [optional] 

### Return type

[**LdapPingResult**](LdapPingResult.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_ldap_group**
> Array&lt;UserGroup&gt; search_ldap_group(opts)

Search available ldap groups.

This endpoint searches the available ldap groups based on related configuration parameters. support to search by groupname or groupdn. 

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

api_instance = Harbor2Client::LdapApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  groupname: 'groupname_example', # String | Ldap group name
  groupdn: 'groupdn_example' # String | The LDAP group DN
}

begin
  #Search available ldap groups.
  result = api_instance.search_ldap_group(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling LdapApi->search_ldap_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **groupname** | **String**| Ldap group name | [optional] 
 **groupdn** | **String**| The LDAP group DN | [optional] 

### Return type

[**Array&lt;UserGroup&gt;**](UserGroup.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_ldap_user**
> Array&lt;LdapUser&gt; search_ldap_user(opts)

Search available ldap users.

This endpoint searches the available ldap users based on related configuration parameters. Support searched by input ladp configuration, load configuration from the system and specific filter. 

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

api_instance = Harbor2Client::LdapApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  username: 'username_example' # String | Registered user ID
}

begin
  #Search available ldap users.
  result = api_instance.search_ldap_user(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling LdapApi->search_ldap_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **username** | **String**| Registered user ID | [optional] 

### Return type

[**Array&lt;LdapUser&gt;**](LdapUser.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



