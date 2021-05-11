# RequestTimeFilterPostcodeSectorsArrivalSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **Int32** |  | 
**ArrivalTime** | **System.DateTime** |  | 
**ReachablePostcodesThreshold** | **Double** |  | 
**Properties** | [**RequestTimeFilterPostcodeSectorsProperty[]**](RequestTimeFilterPostcodeSectorsProperty.md) |  | 
**Range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterPostcodeSectorsArrivalSearch = Initialize-PSOpenAPIToolsRequestTimeFilterPostcodeSectorsArrivalSearch  -Id null `
 -Transportation null `
 -TravelTime null `
 -ArrivalTime null `
 -ReachablePostcodesThreshold null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterPostcodeSectorsArrivalSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

