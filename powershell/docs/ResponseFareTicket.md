# ResponseFareTicket
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Price** | **Double** |  | 
**Currency** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ResponseFareTicket = Initialize-PSOpenAPIToolsResponseFareTicket  -Type null `
 -Price null `
 -Currency null
```

- Convert the resource to JSON
```powershell
$ResponseFareTicket | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

