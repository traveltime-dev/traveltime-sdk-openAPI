# ResponseTimeFilterPostcodesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **String** |  | 
**Postcodes** | [**ResponseTimeFilterPostcode[]**](ResponseTimeFilterPostcode.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseTimeFilterPostcodesResult = Initialize-PSOpenAPIToolsResponseTimeFilterPostcodesResult  -SearchId null `
 -Postcodes null
```

- Convert the resource to JSON
```powershell
$ResponseTimeFilterPostcodesResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

