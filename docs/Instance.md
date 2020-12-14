# Harbor2Client::Instance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**name** | **String** | Instance name | [optional] 
**description** | **String** | Description of instance | [optional] 
**vendor** | **String** | Based on which driver, identified by ID | [optional] 
**endpoint** | **String** | The service endpoint of this instance | [optional] 
**auth_mode** | **String** | The authentication way supported | [optional] 
**auth_info** | **Hash&lt;String, String&gt;** | The auth credential data if exists | [optional] 
**status** | **String** | The health status | [optional] 
**enabled** | **BOOLEAN** | Whether the instance is activated or not | [optional] 
**default** | **BOOLEAN** | Whether the instance is default or not | [optional] 
**insecure** | **BOOLEAN** | Whether the instance endpoint is insecure or not | [optional] 
**setup_timestamp** | **Integer** | The timestamp of instance setting up | [optional] 


