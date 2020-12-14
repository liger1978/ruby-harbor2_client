# harbor2_client

Harbor2Client - the Ruby gem for the [Harbor 2 API](https://github.com/goharbor/harbor/blob/master/api/v2.0/swagger.yaml).

These APIs provide services for manipulating Harbor projects.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0
- Package version: 0.2.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build harbor2_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./harbor2_client-0.2.0.gem
```
(for development, run `gem install --dev ./harbor2_client-0.2.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'harbor2_client', '~> 0.2.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'harbor2_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'harbor2_client'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *http://localhost/api/v2.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Harbor2Client::ArtifactApi* | [**add_label**](docs/ArtifactApi.md#add_label) | **POST** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/labels | Add label to artifact
*Harbor2Client::ArtifactApi* | [**copy_artifact**](docs/ArtifactApi.md#copy_artifact) | **POST** /projects/{project_name}/repositories/{repository_name}/artifacts | Copy artifact
*Harbor2Client::ArtifactApi* | [**create_tag**](docs/ArtifactApi.md#create_tag) | **POST** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/tags | Create tag
*Harbor2Client::ArtifactApi* | [**delete_artifact**](docs/ArtifactApi.md#delete_artifact) | **DELETE** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference} | Delete the specific artifact
*Harbor2Client::ArtifactApi* | [**delete_tag**](docs/ArtifactApi.md#delete_tag) | **DELETE** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/tags/{tag_name} | Delete tag
*Harbor2Client::ArtifactApi* | [**get_addition**](docs/ArtifactApi.md#get_addition) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/additions/{addition} | Get the addition of the specific artifact
*Harbor2Client::ArtifactApi* | [**get_artifact**](docs/ArtifactApi.md#get_artifact) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference} | Get the specific artifact
*Harbor2Client::ArtifactApi* | [**list_artifacts**](docs/ArtifactApi.md#list_artifacts) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts | List artifacts
*Harbor2Client::ArtifactApi* | [**list_tags**](docs/ArtifactApi.md#list_tags) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/tags | List tags
*Harbor2Client::ArtifactApi* | [**remove_label**](docs/ArtifactApi.md#remove_label) | **DELETE** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/labels/{label_id} | Remove label from artifact
*Harbor2Client::AuditlogApi* | [**list_audit_logs**](docs/AuditlogApi.md#list_audit_logs) | **GET** /audit-logs | Get recent logs of the projects which the user is a member of
*Harbor2Client::IconApi* | [**get_icon**](docs/IconApi.md#get_icon) | **GET** /icons/{digest} | Get artifact icon
*Harbor2Client::PreheatApi* | [**create_instance**](docs/PreheatApi.md#create_instance) | **POST** /p2p/preheat/instances | Create p2p provider instances
*Harbor2Client::PreheatApi* | [**create_policy**](docs/PreheatApi.md#create_policy) | **POST** /projects/{project_name}/preheat/policies | Create a preheat policy under a project
*Harbor2Client::PreheatApi* | [**delete_instance**](docs/PreheatApi.md#delete_instance) | **DELETE** /p2p/preheat/instances/{preheat_instance_name} | Delete the specified P2P provider instance
*Harbor2Client::PreheatApi* | [**delete_policy**](docs/PreheatApi.md#delete_policy) | **DELETE** /projects/{project_name}/preheat/policies/{preheat_policy_name} | Delete a preheat policy
*Harbor2Client::PreheatApi* | [**get_execution**](docs/PreheatApi.md#get_execution) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions/{execution_id} | Get a execution detail by id
*Harbor2Client::PreheatApi* | [**get_instance**](docs/PreheatApi.md#get_instance) | **GET** /p2p/preheat/instances/{preheat_instance_name} | Get a P2P provider instance
*Harbor2Client::PreheatApi* | [**get_policy**](docs/PreheatApi.md#get_policy) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name} | Get a preheat policy
*Harbor2Client::PreheatApi* | [**get_preheat_log**](docs/PreheatApi.md#get_preheat_log) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions/{execution_id}/tasks/{task_id}/logs | Get the log text stream of the specified task for the given execution
*Harbor2Client::PreheatApi* | [**list_executions**](docs/PreheatApi.md#list_executions) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions | List executions for the given policy
*Harbor2Client::PreheatApi* | [**list_instances**](docs/PreheatApi.md#list_instances) | **GET** /p2p/preheat/instances | List P2P provider instances
*Harbor2Client::PreheatApi* | [**list_policies**](docs/PreheatApi.md#list_policies) | **GET** /projects/{project_name}/preheat/policies | List preheat policies
*Harbor2Client::PreheatApi* | [**list_providers**](docs/PreheatApi.md#list_providers) | **GET** /p2p/preheat/providers | List P2P providers
*Harbor2Client::PreheatApi* | [**list_providers_under_project**](docs/PreheatApi.md#list_providers_under_project) | **GET** /projects/{project_name}/preheat/providers | Get all providers at project level
*Harbor2Client::PreheatApi* | [**list_tasks**](docs/PreheatApi.md#list_tasks) | **GET** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions/{execution_id}/tasks | List all the related tasks for the given execution
*Harbor2Client::PreheatApi* | [**manual_preheat**](docs/PreheatApi.md#manual_preheat) | **POST** /projects/{project_name}/preheat/policies/{preheat_policy_name} | Manual preheat
*Harbor2Client::PreheatApi* | [**ping_instances**](docs/PreheatApi.md#ping_instances) | **POST** /p2p/preheat/instances/ping | Ping status of a instance.
*Harbor2Client::PreheatApi* | [**stop_execution**](docs/PreheatApi.md#stop_execution) | **PATCH** /projects/{project_name}/preheat/policies/{preheat_policy_name}/executions/{execution_id} | Stop a execution
*Harbor2Client::PreheatApi* | [**update_instance**](docs/PreheatApi.md#update_instance) | **PUT** /p2p/preheat/instances/{preheat_instance_name} | Update the specified P2P provider instance
*Harbor2Client::PreheatApi* | [**update_policy**](docs/PreheatApi.md#update_policy) | **PUT** /projects/{project_name}/preheat/policies/{preheat_policy_name} | Update preheat policy
*Harbor2Client::ProjectApi* | [**create_project**](docs/ProjectApi.md#create_project) | **POST** /projects | Create a new project.
*Harbor2Client::ProjectApi* | [**delete_project**](docs/ProjectApi.md#delete_project) | **DELETE** /projects/{project_id} | Delete project by projectID
*Harbor2Client::ProjectApi* | [**get_logs**](docs/ProjectApi.md#get_logs) | **GET** /projects/{project_name}/logs | Get recent logs of the projects
*Harbor2Client::ProjectApi* | [**get_project**](docs/ProjectApi.md#get_project) | **GET** /projects/{project_id} | Return specific project detail information
*Harbor2Client::ProjectApi* | [**get_project_deletable**](docs/ProjectApi.md#get_project_deletable) | **GET** /projects/{project_id}/_deletable | Get the deletable status of the project
*Harbor2Client::ProjectApi* | [**get_project_summary**](docs/ProjectApi.md#get_project_summary) | **GET** /projects/{project_id}/summary | Get summary of the project.
*Harbor2Client::ProjectApi* | [**head_project**](docs/ProjectApi.md#head_project) | **HEAD** /projects | Check if the project name user provided already exists.
*Harbor2Client::ProjectApi* | [**list_projects**](docs/ProjectApi.md#list_projects) | **GET** /projects | List projects
*Harbor2Client::ProjectApi* | [**update_project**](docs/ProjectApi.md#update_project) | **PUT** /projects/{project_id} | Update properties for a selected project.
*Harbor2Client::RepositoryApi* | [**delete_repository**](docs/RepositoryApi.md#delete_repository) | **DELETE** /projects/{project_name}/repositories/{repository_name} | Delete repository
*Harbor2Client::RepositoryApi* | [**get_repository**](docs/RepositoryApi.md#get_repository) | **GET** /projects/{project_name}/repositories/{repository_name} | Get repository
*Harbor2Client::RepositoryApi* | [**list_repositories**](docs/RepositoryApi.md#list_repositories) | **GET** /projects/{project_name}/repositories | List repositories
*Harbor2Client::RepositoryApi* | [**update_repository**](docs/RepositoryApi.md#update_repository) | **PUT** /projects/{project_name}/repositories/{repository_name} | Update repository
*Harbor2Client::ScanApi* | [**get_report_log**](docs/ScanApi.md#get_report_log) | **GET** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/scan/{report_id}/log | Get the log of the scan report
*Harbor2Client::ScanApi* | [**scan_artifact**](docs/ScanApi.md#scan_artifact) | **POST** /projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/scan | Scan the artifact


## Documentation for Models

 - [Harbor2Client::AdditionLink](docs/AdditionLink.md)
 - [Harbor2Client::AdditionLinks](docs/AdditionLinks.md)
 - [Harbor2Client::Annotations](docs/Annotations.md)
 - [Harbor2Client::Artifact](docs/Artifact.md)
 - [Harbor2Client::AuditLog](docs/AuditLog.md)
 - [Harbor2Client::CVEAllowlist](docs/CVEAllowlist.md)
 - [Harbor2Client::CVEAllowlistItem](docs/CVEAllowlistItem.md)
 - [Harbor2Client::Error](docs/Error.md)
 - [Harbor2Client::Errors](docs/Errors.md)
 - [Harbor2Client::Execution](docs/Execution.md)
 - [Harbor2Client::ExtraAttrs](docs/ExtraAttrs.md)
 - [Harbor2Client::Icon](docs/Icon.md)
 - [Harbor2Client::Instance](docs/Instance.md)
 - [Harbor2Client::Label](docs/Label.md)
 - [Harbor2Client::Metadata](docs/Metadata.md)
 - [Harbor2Client::Metrics](docs/Metrics.md)
 - [Harbor2Client::NativeReportSummary](docs/NativeReportSummary.md)
 - [Harbor2Client::Platform](docs/Platform.md)
 - [Harbor2Client::PreheatPolicy](docs/PreheatPolicy.md)
 - [Harbor2Client::Project](docs/Project.md)
 - [Harbor2Client::ProjectDeletable](docs/ProjectDeletable.md)
 - [Harbor2Client::ProjectMetadata](docs/ProjectMetadata.md)
 - [Harbor2Client::ProjectReq](docs/ProjectReq.md)
 - [Harbor2Client::ProjectSummary](docs/ProjectSummary.md)
 - [Harbor2Client::ProjectSummaryQuota](docs/ProjectSummaryQuota.md)
 - [Harbor2Client::ProviderUnderProject](docs/ProviderUnderProject.md)
 - [Harbor2Client::Reference](docs/Reference.md)
 - [Harbor2Client::Registry](docs/Registry.md)
 - [Harbor2Client::RegistryCredential](docs/RegistryCredential.md)
 - [Harbor2Client::Repository](docs/Repository.md)
 - [Harbor2Client::ResourceList](docs/ResourceList.md)
 - [Harbor2Client::ScanOverview](docs/ScanOverview.md)
 - [Harbor2Client::Tag](docs/Tag.md)
 - [Harbor2Client::Task](docs/Task.md)
 - [Harbor2Client::VulnerabilitySummary](docs/VulnerabilitySummary.md)


## Documentation for Authorization


### basic

- **Type**: HTTP basic authentication

