# Harbor2Client::WebhookPolicy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The webhook policy ID. | [optional] 
**name** | **String** | The name of webhook policy. | [optional] 
**description** | **String** | The description of webhook policy. | [optional] 
**project_id** | **Integer** | The project ID of webhook policy. | [optional] 
**targets** | [**Array&lt;WebhookTargetObject&gt;**](WebhookTargetObject.md) |  | [optional] 
**event_types** | **Array&lt;String&gt;** |  | [optional] 
**creator** | **String** | The creator of the webhook policy. | [optional] 
**creation_time** | **DateTime** | The create time of the webhook policy. | [optional] 
**update_time** | **DateTime** | The update time of the webhook policy. | [optional] 
**enabled** | **BOOLEAN** | Whether the webhook policy is enabled or not. | [optional] 


