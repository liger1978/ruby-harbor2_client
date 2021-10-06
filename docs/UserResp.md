# Harbor2Client::UserResp

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | [optional] 
**realname** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 
**user_id** | **Integer** |  | [optional] 
**username** | **String** |  | [optional] 
**sysadmin_flag** | **BOOLEAN** |  | [optional] 
**admin_role_in_auth** | **BOOLEAN** | indicate the admin privilege is grant by authenticator (LDAP), is always false unless it is the current login user | [optional] 
**oidc_user_meta** | [**OIDCUserInfo**](OIDCUserInfo.md) |  | [optional] 
**creation_time** | **DateTime** | The creation time of the user. | [optional] 
**update_time** | **DateTime** | The update time of the user. | [optional] 


