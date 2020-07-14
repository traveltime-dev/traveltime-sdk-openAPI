# RequestTimeFilterArrivalSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**DepartureLocationIds** | **String[]** |  | 
**ArrivalLocationId** | **String** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **Int32** |  | 
**ArrivalTime** | **System.DateTime** |  | 
**Properties** | [**RequestTimeFilterProperty[]**](RequestTimeFilterProperty.md) |  | 
**Range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-PSOpenAPIToolsRequestTimeFilterArrivalSearch  -Id null `
 -DepartureLocationIds null `
 -ArrivalLocationId null `
 -Transportation null `
 -TravelTime null `
 -ArrivalTime null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

