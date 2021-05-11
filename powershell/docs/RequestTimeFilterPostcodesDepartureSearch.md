# RequestTimeFilterPostcodesDepartureSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **Int32** |  | 
**DepartureTime** | **System.DateTime** |  | 
**Properties** | [**RequestTimeFilterPostcodesProperty[]**](RequestTimeFilterPostcodesProperty.md) |  | 
**Range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterPostcodesDepartureSearch = Initialize-PSOpenAPIToolsRequestTimeFilterPostcodesDepartureSearch  -Id null `
 -Transportation null `
 -TravelTime null `
 -DepartureTime null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterPostcodesDepartureSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

