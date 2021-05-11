# RequestRoutesDepartureSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**DepartureLocationId** | **String** |  | 
**ArrivalLocationIds** | **String[]** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**DepartureTime** | **System.DateTime** |  | 
**Properties** | [**RequestRoutesProperty[]**](RequestRoutesProperty.md) |  | 
**Range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestRoutesDepartureSearch = Initialize-PSOpenAPIToolsRequestRoutesDepartureSearch  -Id null `
 -DepartureLocationId null `
 -ArrivalLocationIds null `
 -Transportation null `
 -DepartureTime null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$RequestRoutesDepartureSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

