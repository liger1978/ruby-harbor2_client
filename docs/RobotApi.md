# Harbor2Client::RobotApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_robot**](RobotApi.md#create_robot) | **POST** /robots | Create a robot account
[**delete_robot**](RobotApi.md#delete_robot) | **DELETE** /robots/{robot_id} | Delete a robot account
[**get_robot_by_id**](RobotApi.md#get_robot_by_id) | **GET** /robots/{robot_id} | Get a robot account
[**list_robot**](RobotApi.md#list_robot) | **GET** /robots | Get robot account
[**refresh_sec**](RobotApi.md#refresh_sec) | **PATCH** /robots/{robot_id} | Refresh the robot secret
[**update_robot**](RobotApi.md#update_robot) | **PUT** /robots/{robot_id} | Update a robot account


# **create_robot**
> RobotCreated create_robot(robot, opts)

Create a robot account

Create a robot account

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

api_instance = Harbor2Client::RobotApi.new

robot = Harbor2Client::RobotCreate.new # RobotCreate | The JSON object of a robot account.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create a robot account
  result = api_instance.create_robot(robot, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RobotApi->create_robot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **robot** | [**RobotCreate**](RobotCreate.md)| The JSON object of a robot account. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**RobotCreated**](RobotCreated.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_robot**
> delete_robot(robot_id, , opts)

Delete a robot account

This endpoint deletes specific robot account information by robot ID.

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

api_instance = Harbor2Client::RobotApi.new

robot_id = 56 # Integer | Robot ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete a robot account
  api_instance.delete_robot(robot_id, , opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RobotApi->delete_robot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **robot_id** | **Integer**| Robot ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_robot_by_id**
> Robot get_robot_by_id(robot_id, , opts)

Get a robot account

This endpoint returns specific robot account information by robot ID.

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

api_instance = Harbor2Client::RobotApi.new

robot_id = 56 # Integer | Robot ID

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get a robot account
  result = api_instance.get_robot_by_id(robot_id, , opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RobotApi->get_robot_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **robot_id** | **Integer**| Robot ID | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**Robot**](Robot.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_robot**
> Array&lt;Robot&gt; list_robot(opts)

Get robot account

List the robot accounts with the specified level and project.

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

api_instance = Harbor2Client::RobotApi.new

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
}

begin
  #Get robot account
  result = api_instance.list_robot(opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RobotApi->list_robot: #{e}"
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

[**Array&lt;Robot&gt;**](Robot.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **refresh_sec**
> RobotSec refresh_sec(robot_id, robot_sec, opts)

Refresh the robot secret

Refresh the robot secret

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

api_instance = Harbor2Client::RobotApi.new

robot_id = 56 # Integer | Robot ID

robot_sec = Harbor2Client::RobotSec.new # RobotSec | The JSON object of a robot account.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Refresh the robot secret
  result = api_instance.refresh_sec(robot_id, robot_sec, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RobotApi->refresh_sec: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **robot_id** | **Integer**| Robot ID | 
 **robot_sec** | [**RobotSec**](RobotSec.md)| The JSON object of a robot account. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

[**RobotSec**](RobotSec.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_robot**
> update_robot(robot_id, robot, opts)

Update a robot account

This endpoint updates specific robot account information by robot ID.

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

api_instance = Harbor2Client::RobotApi.new

robot_id = 56 # Integer | Robot ID

robot = Harbor2Client::Robot.new # Robot | The JSON object of a robot account.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Update a robot account
  api_instance.update_robot(robot_id, robot, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling RobotApi->update_robot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **robot_id** | **Integer**| Robot ID | 
 **robot** | [**Robot**](Robot.md)| The JSON object of a robot account. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



