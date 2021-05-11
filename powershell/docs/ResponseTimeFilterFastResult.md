# ResponseTimeFilterFastResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **String** |  | 
**Locations** | [**ResponseTimeFilterFastLocation[]**](ResponseTimeFilterFastLocation.md) |  | 
**Unreachable** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$ResponseTimeFilterFastResult = Initialize-PSOpenAPIToolsResponseTimeFilterFastResult  -SearchId null `
 -Locations null `
 -Unreachable null
```

- Convert the resource to JSON
```powershell
$ResponseTimeFilterFastResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

