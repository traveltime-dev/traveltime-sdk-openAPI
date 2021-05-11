# RequestLocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Coords** | [**Coords**](Coords.md) |  | 

## Examples

- Prepare the resource
```powershell
$RequestLocation = Initialize-PSOpenAPIToolsRequestLocation  -Id null `
 -Coords null
```

- Convert the resource to JSON
```powershell
$RequestLocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

