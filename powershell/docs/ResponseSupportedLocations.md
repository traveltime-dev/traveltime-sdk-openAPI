# ResponseSupportedLocations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locations** | [**ResponseSupportedLocation[]**](ResponseSupportedLocation.md) |  | 
**UnsupportedLocations** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$ResponseSupportedLocations = Initialize-PSOpenAPIToolsResponseSupportedLocations  -Locations null `
 -UnsupportedLocations null
```

- Convert the resource to JSON
```powershell
$ResponseSupportedLocations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

