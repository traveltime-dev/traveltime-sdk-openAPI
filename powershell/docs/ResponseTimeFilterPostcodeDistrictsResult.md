# ResponseTimeFilterPostcodeDistrictsResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **String** |  | 
**Districts** | [**ResponseTimeFilterPostcodeDistrict[]**](ResponseTimeFilterPostcodeDistrict.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseTimeFilterPostcodeDistrictsResult = Initialize-PSOpenAPIToolsResponseTimeFilterPostcodeDistrictsResult  -SearchId null `
 -Districts null
```

- Convert the resource to JSON
```powershell
$ResponseTimeFilterPostcodeDistrictsResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

