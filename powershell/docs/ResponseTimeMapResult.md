# ResponseTimeMapResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **String** |  | 
**Shapes** | [**ResponseShape[]**](ResponseShape.md) |  | 
**Properties** | [**ResponseTimeMapProperties**](ResponseTimeMapProperties.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseTimeMapResult = Initialize-PSOpenAPIToolsResponseTimeMapResult  -SearchId null `
 -Shapes null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$ResponseTimeMapResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

