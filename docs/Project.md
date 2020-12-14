# Harbor2Client::Project

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **Integer** | Project ID | [optional] 
**owner_id** | **Integer** | The owner ID of the project always means the creator of the project. | [optional] 
**name** | **String** | The name of the project. | [optional] 
**registry_id** | **Integer** | The ID of referenced registry when the project is a proxy cache project. | [optional] 
**creation_time** | **DateTime** | The creation time of the project. | [optional] 
**update_time** | **DateTime** | The update time of the project. | [optional] 
**deleted** | **BOOLEAN** | A deletion mark of the project. | [optional] 
**owner_name** | **String** | The owner name of the project. | [optional] 
**togglable** | **BOOLEAN** | Correspond to the UI about whether the project&#39;s publicity is  updatable (for UI) | [optional] 
**current_user_role_id** | **Integer** | The role ID with highest permission of the current user who triggered the API (for UI).  This attribute is deprecated and will be removed in future versions. | [optional] 
**current_user_role_ids** | **Array&lt;Integer&gt;** | The list of role ID of the current user who triggered the API (for UI) | [optional] 
**repo_count** | **Integer** | The number of the repositories under this project. | [optional] 
**chart_count** | **Integer** | The total number of charts under this project. | [optional] 
**metadata** | [**ProjectMetadata**](ProjectMetadata.md) | The metadata of the project. | [optional] 
**cve_allowlist** | [**CVEAllowlist**](CVEAllowlist.md) | The CVE allowlist of this project. | [optional] 


