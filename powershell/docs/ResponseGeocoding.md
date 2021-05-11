# ResponseGeocoding
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Features** | [**ResponseGeocodingGeoJsonFeature[]**](ResponseGeocodingGeoJsonFeature.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseGeocoding = Initialize-PSOpenAPIToolsResponseGeocoding  -Type null `
 -Features null
```

- Convert the resource to JSON
```powershell
$ResponseGeocoding | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

