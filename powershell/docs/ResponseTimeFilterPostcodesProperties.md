# ResponseTimeFilterPostcodesProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TravelTime** | **Int32** |  | [optional] 
**Distance** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResponseTimeFilterPostcodesProperties = Initialize-PSOpenAPIToolsResponseTimeFilterPostcodesProperties  -TravelTime null `
 -Distance null
```

- Convert the resource to JSON
```powershell
$ResponseTimeFilterPostcodesProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

