# ResponseBoundingBox
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Envelope** | [**ResponseBox**](ResponseBox.md) |  | 
**Boxes** | [**ResponseBox[]**](ResponseBox.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseBoundingBox = Initialize-PSOpenAPIToolsResponseBoundingBox  -Envelope null `
 -Boxes null
```

- Convert the resource to JSON
```powershell
$ResponseBoundingBox | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

