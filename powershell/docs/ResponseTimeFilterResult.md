# ResponseTimeFilterResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **String** |  | 
**Locations** | [**ResponseTimeFilterLocation[]**](ResponseTimeFilterLocation.md) |  | 
**Unreachable** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$ResponseTimeFilterResult = Initialize-PSOpenAPIToolsResponseTimeFilterResult  -SearchId null `
 -Locations null `
 -Unreachable null
```

- Convert the resource to JSON
```powershell
$ResponseTimeFilterResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

