# Harbor2Client::NativeReportSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**report_id** | **String** | id of the native scan report | [optional] 
**scan_status** | **String** | The status of the report generating process | [optional] 
**severity** | **String** | The overall severity | [optional] 
**duration** | **Integer** | The seconds spent for generating the report | [optional] 
**summary** | [**VulnerabilitySummary**](VulnerabilitySummary.md) |  | [optional] 
**start_time** | **DateTime** | The start time of the scan process that generating report | [optional] 
**end_time** | **DateTime** | The end time of the scan process that generating report | [optional] 
**complete_percent** | **Integer** | The complete percent of the scanning which value is between 0 and 100 | [optional] 
**scanner** | [**Scanner**](Scanner.md) |  | [optional] 


