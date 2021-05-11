# RequestTimeFilterFastArrivalOneToManySearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**DepartureLocationId** | **String** |  | 
**ArrivalLocationIds** | **String[]** |  | 
**Transportation** | [**RequestTransportationFast**](RequestTransportationFast.md) |  | 
**TravelTime** | **Int32** |  | 
**ArrivalTimePeriod** | [**RequestArrivalTimePeriod**](RequestArrivalTimePeriod.md) |  | 
**Properties** | [**RequestTimeFilterFastProperty[]**](RequestTimeFilterFastProperty.md) |  | 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterFastArrivalOneToManySearch = Initialize-PSOpenAPIToolsRequestTimeFilterFastArrivalOneToManySearch  -Id null `
 -DepartureLocationId null `
 -ArrivalLocationIds null `
 -Transportation null `
 -TravelTime null `
 -ArrivalTimePeriod null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterFastArrivalOneToManySearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

