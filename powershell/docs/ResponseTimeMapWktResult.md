# ResponseTimeMapWktResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **String** |  | 
**Shape** | **String** |  | 
**Properties** | [**ResponseTimeMapProperties**](ResponseTimeMapProperties.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseTimeMapWktResult = Initialize-PSOpenAPIToolsResponseTimeMapWktResult  -SearchId null `
 -Shape null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$ResponseTimeMapWktResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

