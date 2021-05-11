# ResponseBox
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MinLat** | **Double** |  | 
**MaxLat** | **Double** |  | 
**MinLng** | **Double** |  | 
**MaxLng** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$ResponseBox = Initialize-PSOpenAPIToolsResponseBox  -MinLat null `
 -MaxLat null `
 -MinLng null `
 -MaxLng null
```

- Convert the resource to JSON
```powershell
$ResponseBox | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

