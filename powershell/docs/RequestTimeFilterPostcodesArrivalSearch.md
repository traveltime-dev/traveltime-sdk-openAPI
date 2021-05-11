# RequestTimeFilterPostcodesArrivalSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **Int32** |  | 
**ArrivalTime** | **System.DateTime** |  | 
**Properties** | [**RequestTimeFilterPostcodesProperty[]**](RequestTimeFilterPostcodesProperty.md) |  | 
**Range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterPostcodesArrivalSearch = Initialize-PSOpenAPIToolsRequestTimeFilterPostcodesArrivalSearch  -Id null `
 -Transportation null `
 -TravelTime null `
 -ArrivalTime null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterPostcodesArrivalSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

