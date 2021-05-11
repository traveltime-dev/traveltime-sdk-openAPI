# ResponseGeocodingGeoJsonFeature
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Geometry** | [**ResponseGeocodingGeometry**](ResponseGeocodingGeometry.md) |  | 
**Properties** | [**ResponseGeocodingProperties**](ResponseGeocodingProperties.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseGeocodingGeoJsonFeature = Initialize-PSOpenAPIToolsResponseGeocodingGeoJsonFeature  -Type null `
 -Geometry null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$ResponseGeocodingGeoJsonFeature | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

