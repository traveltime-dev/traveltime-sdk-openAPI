# ResponseTimeMapBoundingBoxesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchId** | **String** |  | 
**BoundingBoxes** | [**ResponseBoundingBox[]**](ResponseBoundingBox.md) |  | 
**Properties** | [**ResponseTimeMapProperties**](ResponseTimeMapProperties.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseTimeMapBoundingBoxesResult = Initialize-PSOpenAPIToolsResponseTimeMapBoundingBoxesResult  -SearchId null `
 -BoundingBoxes null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$ResponseTimeMapBoundingBoxesResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

