# Harbor2Client::ProjectMemberEntity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | the project member id | [optional] 
**project_id** | **Integer** | the project id | [optional] 
**entity_name** | **String** | the name of the group member. | [optional] 
**role_name** | **String** | the name of the role | [optional] 
**role_id** | **Integer** | the role id | [optional] 
**entity_id** | **Integer** | the id of entity, if the member is a user, it is user_id in user table. if the member is a user group, it is the user group&#39;s ID in user_group table. | [optional] 
**entity_type** | **String** | the entity&#39;s type, u for user entity, g for group entity. | [optional] 


