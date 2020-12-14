# Harbor2Client::Artifact

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The ID of the artifact | [optional] 
**type** | **String** | The type of the artifact, e.g. image, chart, etc | [optional] 
**media_type** | **String** | The media type of the artifact | [optional] 
**manifest_media_type** | **String** | The manifest media type of the artifact | [optional] 
**project_id** | **Integer** | The ID of the project that the artifact belongs to | [optional] 
**repository_id** | **Integer** | The ID of the repository that the artifact belongs to | [optional] 
**digest** | **String** | The digest of the artifact | [optional] 
**size** | **Integer** | The size of the artifact | [optional] 
**icon** | **String** | The digest of the icon | [optional] 
**push_time** | **DateTime** | The push time of the artifact | [optional] 
**pull_time** | **DateTime** | The latest pull time of the artifact | [optional] 
**extra_attrs** | [**ExtraAttrs**](ExtraAttrs.md) |  | [optional] 
**annotations** | [**Annotations**](Annotations.md) |  | [optional] 
**references** | [**Array&lt;Reference&gt;**](Reference.md) |  | [optional] 
**tags** | [**Array&lt;Tag&gt;**](Tag.md) |  | [optional] 
**addition_links** | [**AdditionLinks**](AdditionLinks.md) |  | [optional] 
**labels** | [**Array&lt;Label&gt;**](Label.md) |  | [optional] 
**scan_overview** | [**ScanOverview**](ScanOverview.md) | The overview of the scan result. | [optional] 


