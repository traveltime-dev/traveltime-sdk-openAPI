# ResponseShape
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Shell** | [**Coords[]**](Coords.md) |  | 
**Holes** | [**Coords[][]**](Array.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseShape = Initialize-PSOpenAPIToolsResponseShape  -Shell null `
 -Holes null
```

- Convert the resource to JSON
```powershell
$ResponseShape | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

