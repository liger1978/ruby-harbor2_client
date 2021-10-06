# Harbor2Client::ArtifactApi

All URIs are relative to *http://localhost/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_label**](ArtifactApi.md#add_label) | **POST** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/labels | Add label to artifact
[**copy_artifact**](ArtifactApi.md#copy_artifact) | **POST** /projects/{project_name}/repositories/{repository_name}/artifacts | Copy artifact
[**create_tag**](ArtifactApi.md#create_tag) | **POST** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/tags | Create tag
[**delete_artifact**](ArtifactApi.md#delete_artifact) | **DELETE** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference} | Delete the specific artifact
[**delete_tag**](ArtifactApi.md#delete_tag) | **DELETE** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/tags/{tag_name} | Delete tag
[**get_addition**](ArtifactApi.md#get_addition) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/additions/{addition} | Get the addition of the specific artifact
[**get_artifact**](ArtifactApi.md#get_artifact) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference} | Get the specific artifact
[**get_vulnerabilities_addition**](ArtifactApi.md#get_vulnerabilities_addition) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/additions/vulnerabilities | Get the vulnerabilities addition of the specific artifact
[**list_artifacts**](ArtifactApi.md#list_artifacts) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts | List artifacts
[**list_tags**](ArtifactApi.md#list_tags) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/tags | List tags
[**remove_label**](ArtifactApi.md#remove_label) | **DELETE** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/labels/{label_id} | Remove label from artifact


# **add_label**
> add_label(project_namerepository_name, reference, label, opts)

Add label to artifact

Add label to the specified artiact.

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

label = Harbor2Client::Label.new # Label | The label that added to the artifact. Only the ID property is needed.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Add label to artifact
  api_instance.add_label(project_namerepository_name, reference, label, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->add_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **label** | [**Label**](Label.md)| The label that added to the artifact. Only the ID property is needed. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **copy_artifact**
> copy_artifact(project_namerepository_name, from, opts)

Copy artifact

Copy the artifact specified in the \"from\" parameter to the repository.

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

from = 'from_example' # String | The artifact from which the new artifact is copied from, the format should be \"project/repository:tag\" or \"project/repository@digest\".

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Copy artifact
  api_instance.copy_artifact(project_namerepository_name, from, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->copy_artifact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **from** | **String**| The artifact from which the new artifact is copied from, the format should be \&quot;project/repository:tag\&quot; or \&quot;project/repository@digest\&quot;. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_tag**
> create_tag(project_namerepository_name, reference, tag, opts)

Create tag

Create a tag for the specified artifact

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

tag = Harbor2Client::Tag.new # Tag | The JSON object of tag.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Create tag
  api_instance.create_tag(project_namerepository_name, reference, tag, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->create_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **tag** | [**Tag**](Tag.md)| The JSON object of tag. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_artifact**
> delete_artifact(project_namerepository_name, reference, , opts)

Delete the specific artifact

Delete the artifact specified by the reference under the project and repository. The reference can be digest or tag

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete the specific artifact
  api_instance.delete_artifact(project_namerepository_name, reference, , opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->delete_artifact: #{e}"
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



# **delete_tag**
> delete_tag(project_namerepository_name, reference, tag_name, opts)

Delete tag

Delete the tag of the specified artifact

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

tag_name = 'tag_name_example' # String | The name of the tag

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Delete tag
  api_instance.delete_tag(project_namerepository_name, reference, tag_name, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->delete_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **tag_name** | **String**| The name of the tag | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_addition**
> String get_addition(project_namerepository_name, reference, addition, opts)

Get the addition of the specific artifact

Get the addition of the artifact specified by the reference under the project and repository.

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

addition = 'addition_example' # String | The type of addition.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Get the addition of the specific artifact
  result = api_instance.get_addition(project_namerepository_name, reference, addition, opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->get_addition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **addition** | **String**| The type of addition. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

**String**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_artifact**
> Artifact get_artifact(project_namerepository_name, reference, , opts)

Get the specific artifact

Get the artifact specified by the reference under the project and repository. The reference can be digest or tag.

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  x_accept_vulnerabilities: 'application/vnd.scanner.adapter.vuln.report.harbor+json; version=1.0' # String | A comma-separated lists of MIME types for the scan report or scan summary. The first mime type will be used when the report found for it. Currently the mime type supports 'application/vnd.scanner.adapter.vuln.report.harbor+json; version=1.0' and 'application/vnd.security.vulnerability.report; version=1.1'
  with_tag: true, # BOOLEAN | Specify whether the tags are inclued inside the returning artifacts
  with_label: false, # BOOLEAN | Specify whether the labels are inclued inside the returning artifacts
  with_scan_overview: false, # BOOLEAN | Specify whether the scan overview is inclued inside the returning artifacts
  with_signature: false, # BOOLEAN | Specify whether the signature is inclued inside the returning artifacts
  with_immutable_status: false # BOOLEAN | Specify whether the immutable status is inclued inside the tags of the returning artifacts. Only works when setting \"with_tag=true\"
}

begin
  #Get the specific artifact
  result = api_instance.get_artifact(project_namerepository_name, reference, , opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->get_artifact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **x_accept_vulnerabilities** | **String**| A comma-separated lists of MIME types for the scan report or scan summary. The first mime type will be used when the report found for it. Currently the mime type supports &#39;application/vnd.scanner.adapter.vuln.report.harbor+json; version&#x3D;1.0&#39; and &#39;application/vnd.security.vulnerability.report; version&#x3D;1.1&#39; | [optional] [default to application/vnd.scanner.adapter.vuln.report.harbor+json; version&#x3D;1.0]
 **with_tag** | **BOOLEAN**| Specify whether the tags are inclued inside the returning artifacts | [optional] [default to true]
 **with_label** | **BOOLEAN**| Specify whether the labels are inclued inside the returning artifacts | [optional] [default to false]
 **with_scan_overview** | **BOOLEAN**| Specify whether the scan overview is inclued inside the returning artifacts | [optional] [default to false]
 **with_signature** | **BOOLEAN**| Specify whether the signature is inclued inside the returning artifacts | [optional] [default to false]
 **with_immutable_status** | **BOOLEAN**| Specify whether the immutable status is inclued inside the tags of the returning artifacts. Only works when setting \&quot;with_tag&#x3D;true\&quot; | [optional] [default to false]

### Return type

[**Artifact**](Artifact.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_vulnerabilities_addition**
> String get_vulnerabilities_addition(project_namerepository_name, reference, , opts)

Get the vulnerabilities addition of the specific artifact

Get the vulnerabilities addition of the artifact specified by the reference under the project and repository.

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  x_accept_vulnerabilities: 'application/vnd.scanner.adapter.vuln.report.harbor+json; version=1.0' # String | A comma-separated lists of MIME types for the scan report or scan summary. The first mime type will be used when the report found for it. Currently the mime type supports 'application/vnd.scanner.adapter.vuln.report.harbor+json; version=1.0' and 'application/vnd.security.vulnerability.report; version=1.1'
}

begin
  #Get the vulnerabilities addition of the specific artifact
  result = api_instance.get_vulnerabilities_addition(project_namerepository_name, reference, , opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->get_vulnerabilities_addition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **x_accept_vulnerabilities** | **String**| A comma-separated lists of MIME types for the scan report or scan summary. The first mime type will be used when the report found for it. Currently the mime type supports &#39;application/vnd.scanner.adapter.vuln.report.harbor+json; version&#x3D;1.0&#39; and &#39;application/vnd.security.vulnerability.report; version&#x3D;1.1&#39; | [optional] [default to application/vnd.scanner.adapter.vuln.report.harbor+json; version&#x3D;1.0]

### Return type

**String**

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_artifacts**
> Array&lt;Artifact&gt; list_artifacts(project_namerepository_name, , opts)

List artifacts

List artifacts under the specific project and repository. Except the basic properties, the other supported queries in \"q\" includes \"tags=*\" to list only tagged artifacts, \"tags=nil\" to list only untagged artifacts, \"tags=~v\" to list artifacts whose tag fuzzy matches \"v\", \"tags=v\" to list artifact whose tag exactly matches \"v\", \"labels=(id1, id2)\" to list artifacts that both labels with id1 and id2 are added to

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  x_accept_vulnerabilities: 'application/vnd.scanner.adapter.vuln.report.harbor+json; version=1.0' # String | A comma-separated lists of MIME types for the scan report or scan summary. The first mime type will be used when the report found for it. Currently the mime type supports 'application/vnd.scanner.adapter.vuln.report.harbor+json; version=1.0' and 'application/vnd.security.vulnerability.report; version=1.1'
  with_tag: true, # BOOLEAN | Specify whether the tags are included inside the returning artifacts
  with_label: false, # BOOLEAN | Specify whether the labels are included inside the returning artifacts
  with_scan_overview: false, # BOOLEAN | Specify whether the scan overview is included inside the returning artifacts
  with_signature: false, # BOOLEAN | Specify whether the signature is included inside the tags of the returning artifacts. Only works when setting \"with_tag=true\"
  with_immutable_status: false # BOOLEAN | Specify whether the immutable status is included inside the tags of the returning artifacts. Only works when setting \"with_tag=true\"
}

begin
  #List artifacts
  result = api_instance.list_artifacts(project_namerepository_name, , opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->list_artifacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **x_accept_vulnerabilities** | **String**| A comma-separated lists of MIME types for the scan report or scan summary. The first mime type will be used when the report found for it. Currently the mime type supports &#39;application/vnd.scanner.adapter.vuln.report.harbor+json; version&#x3D;1.0&#39; and &#39;application/vnd.security.vulnerability.report; version&#x3D;1.1&#39; | [optional] [default to application/vnd.scanner.adapter.vuln.report.harbor+json; version&#x3D;1.0]
 **with_tag** | **BOOLEAN**| Specify whether the tags are included inside the returning artifacts | [optional] [default to true]
 **with_label** | **BOOLEAN**| Specify whether the labels are included inside the returning artifacts | [optional] [default to false]
 **with_scan_overview** | **BOOLEAN**| Specify whether the scan overview is included inside the returning artifacts | [optional] [default to false]
 **with_signature** | **BOOLEAN**| Specify whether the signature is included inside the tags of the returning artifacts. Only works when setting \&quot;with_tag&#x3D;true\&quot; | [optional] [default to false]
 **with_immutable_status** | **BOOLEAN**| Specify whether the immutable status is included inside the tags of the returning artifacts. Only works when setting \&quot;with_tag&#x3D;true\&quot; | [optional] [default to false]

### Return type

[**Array&lt;Artifact&gt;**](Artifact.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_tags**
> Array&lt;Tag&gt; list_tags(project_namerepository_name, reference, , opts)

List tags

List tags of the specific artifact

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
  q: 'q_example', # String | Query string to query resources. Supported query patterns are \"exact match(k=v)\", \"fuzzy match(k=~v)\", \"range(k=[min~max])\", \"list with union releationship(k={v1 v2 v3})\" and \"list with intersetion relationship(k=(v1 v2 v3))\". The value of range and list can be string(enclosed by \" or '), integer or time(in format \"2020-04-09 02:36:00\"). All of these query patterns should be put in the query string \"q=xxx\" and splitted by \",\". e.g. q=k1=v1,k2=~v2,k3=[min~max]
  sort: 'sort_example', # String | Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \"sort=field1,-field2\"
  page: 1, # Integer | The page number
  page_size: 10, # Integer | The size of per page
  with_signature: false, # BOOLEAN | Specify whether the signature is included inside the returning tags
  with_immutable_status: false # BOOLEAN | Specify whether the immutable status is included inside the returning tags
}

begin
  #List tags
  result = api_instance.list_tags(project_namerepository_name, reference, , opts)
  p result
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->list_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 
 **q** | **String**| Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max] | [optional] 
 **sort** | **String**| Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot; | [optional] 
 **page** | **Integer**| The page number | [optional] [default to 1]
 **page_size** | **Integer**| The size of per page | [optional] [default to 10]
 **with_signature** | **BOOLEAN**| Specify whether the signature is included inside the returning tags | [optional] [default to false]
 **with_immutable_status** | **BOOLEAN**| Specify whether the immutable status is included inside the returning tags | [optional] [default to false]

### Return type

[**Array&lt;Tag&gt;**](Tag.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_label**
> remove_label(project_namerepository_name, reference, label_id, opts)

Remove label from artifact

Remove the label from the specified artiact.

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

api_instance = Harbor2Client::ArtifactApi.new

project_name = 'project_name_example' # String | The name of the project

repository_name = 'repository_name_example' # String | The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -> a%252Fb

reference = 'reference_example' # String | The reference of the artifact, can be digest or tag

label_id = 789 # Integer | The ID of the label that removed from the artifact.

opts = { 
  x_request_id: 'x_request_id_example' # String | An unique ID for the request
}

begin
  #Remove label from artifact
  api_instance.remove_label(project_namerepository_name, reference, label_id, opts)
rescue Harbor2Client::ApiError => e
  puts "Exception when calling ArtifactApi->remove_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_name** | **String**| The name of the project | 
 **repository_name** | **String**| The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb | 
 **reference** | **String**| The reference of the artifact, can be digest or tag | 
 **label_id** | **Integer**| The ID of the label that removed from the artifact. | 
 **x_request_id** | **String**| An unique ID for the request | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



