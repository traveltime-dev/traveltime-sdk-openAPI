# ResponseRoutesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **String** |  | 
**Locations** | [**ResponseRoutesLocation[]**](ResponseRoutesLocation.md) |  | 
**Unreachable** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$ResponseRoutesResult = Initialize-PSOpenAPIToolsResponseRoutesResult  -SearchId null `
 -Locations null `
 -Unreachable null
```

- Convert the resource to JSON
```powershell
$ResponseRoutesResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

