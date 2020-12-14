# Harbor2Client::ProjectMetadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**public** | **String** | The public status of the project. The valid values are \&quot;true\&quot;, \&quot;false\&quot;. | [optional] 
**enable_content_trust** | **String** | Whether content trust is enabled or not. If it is enabled, user can&#39;t pull unsigned images from this project. The valid values are \&quot;true\&quot;, \&quot;false\&quot;. | [optional] 
**prevent_vul** | **String** | Whether prevent the vulnerable images from running. The valid values are \&quot;true\&quot;, \&quot;false\&quot;. | [optional] 
**severity** | **String** | If the vulnerability is high than severity defined here, the images can&#39;t be pulled. The valid values are \&quot;none\&quot;, \&quot;low\&quot;, \&quot;medium\&quot;, \&quot;high\&quot;, \&quot;critical\&quot;. | [optional] 
**auto_scan** | **String** | Whether scan images automatically when pushing. The valid values are \&quot;true\&quot;, \&quot;false\&quot;. | [optional] 
**reuse_sys_cve_allowlist** | **String** | Whether this project reuse the system level CVE allowlist as the allowlist of its own.  The valid values are \&quot;true\&quot;, \&quot;false\&quot;. If it is set to \&quot;true\&quot; the actual allowlist associate with this project, if any, will be ignored. | [optional] 
**retention_id** | **String** | The ID of the tag retention policy for the project | [optional] 


