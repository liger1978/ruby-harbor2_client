# Harbor2Client::AuthproxySetting

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endpoint** | **String** | The fully qualified URI of login endpoint of authproxy, such as &#39;https://192.168.1.2:8443/login&#39; | [optional] 
**tokenreivew_endpoint** | **String** | The fully qualified URI of token review endpoint of authproxy, such as &#39;https://192.168.1.2:8443/tokenreview&#39; | [optional] 
**skip_search** | **BOOLEAN** | The flag to determine whether Harbor can skip search the user/group when adding him as a member. | [optional] 
**verify_cert** | **BOOLEAN** | The flag to determine whether Harbor should verify the certificate when connecting to the auth proxy. | [optional] 
**server_certificate** | **String** | The certificate to be pinned when connecting auth proxy. | [optional] 


