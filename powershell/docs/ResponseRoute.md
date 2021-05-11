# ResponseRoute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DepartureTime** | **System.DateTime** |  | 
**ArrivalTime** | **System.DateTime** |  | 
**Parts** | [**ResponseRoutePart[]**](ResponseRoutePart.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseRoute = Initialize-PSOpenAPIToolsResponseRoute  -DepartureTime null `
 -ArrivalTime null `
 -Parts null
```

- Convert the resource to JSON
```powershell
$ResponseRoute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

