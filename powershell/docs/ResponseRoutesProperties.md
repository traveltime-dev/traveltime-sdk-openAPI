# ResponseRoutesProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TravelTime** | **Int32** |  | [optional] 
**Distance** | **Int32** |  | [optional] 
**Fares** | [**ResponseFares**](ResponseFares.md) |  | [optional] 
**Route** | [**ResponseRoute**](ResponseRoute.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResponseRoutesProperties = Initialize-PSOpenAPIToolsResponseRoutesProperties  -TravelTime null `
 -Distance null `
 -Fares null `
 -Route null
```

- Convert the resource to JSON
```powershell
$ResponseRoutesProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

