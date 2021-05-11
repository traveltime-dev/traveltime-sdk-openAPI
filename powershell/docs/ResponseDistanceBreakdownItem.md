# ResponseDistanceBreakdownItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mode** | [**ResponseTransportationMode**](ResponseTransportationMode.md) |  | 
**Distance** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$ResponseDistanceBreakdownItem = Initialize-PSOpenAPIToolsResponseDistanceBreakdownItem  -Mode null `
 -Distance null
```

- Convert the resource to JSON
```powershell
$ResponseDistanceBreakdownItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

