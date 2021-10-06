# Harbor2Client::ChartVersion

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the chart | 
**home** | **String** | The URL to the relevant project page | [optional] 
**sources** | **Array&lt;String&gt;** | The URL to the source code of chart | [optional] 
**version** | **String** | A SemVer 2 version of chart | 
**description** | **String** | A one-sentence description of chart | [optional] 
**keywords** | **Array&lt;String&gt;** | A list of string keywords | [optional] 
**engine** | **String** | The name of template engine | 
**icon** | **String** | The URL to an icon file | 
**api_version** | **String** | The API version of this chart | 
**app_version** | **String** | The version of the application enclosed in the chart | 
**deprecated** | **BOOLEAN** | Whether or not this chart is deprecated | [optional] 
**labels** | [**Array&lt;Label&gt;**](Label.md) | A list of label | [optional] 
**created** | **String** | The created time of the chart entry | [optional] 
**removed** | **BOOLEAN** | A flag to indicate if the chart entry is removed | [optional] 
**digest** | **String** | The digest value of the chart entry | [optional] 
**urls** | **Array&lt;String&gt;** | The urls of the chart entry | [optional] 


