# ResponseTimeFilterPostcodeSectorsResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **String** |  | 
**Sectors** | [**ResponseTimeFilterPostcodeSector[]**](ResponseTimeFilterPostcodeSector.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseTimeFilterPostcodeSectorsResult = Initialize-PSOpenAPIToolsResponseTimeFilterPostcodeSectorsResult  -SearchId null `
 -Sectors null
```

- Convert the resource to JSON
```powershell
$ResponseTimeFilterPostcodeSectorsResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

