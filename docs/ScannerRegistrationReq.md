# Harbor2Client::ScannerRegistrationReq

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of this registration | 
**description** | **String** | An optional description of this registration. | [optional] 
**url** | **String** | A base URL of the scanner adapter. | 
**auth** | **String** | Specify what authentication approach is adopted for the HTTP communications. Supported types Basic\&quot;, \&quot;Bearer\&quot; and api key header \&quot;X-ScannerAdapter-API-Key\&quot;  | [optional] 
**access_credential** | **String** | An optional value of the HTTP Authorization header sent with each request to the Scanner Adapter API.  | [optional] 
**skip_cert_verify** | **BOOLEAN** | Indicate if skip the certificate verification when sending HTTP requests | [optional] [default to false]
**use_internal_addr** | **BOOLEAN** | Indicate whether use internal registry addr for the scanner to pull content or not | [optional] [default to false]
**disabled** | **BOOLEAN** | Indicate whether the registration is enabled or not | [optional] [default to false]


