# RequestTimeFilterFastArrivalManyToOneSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ArrivalLocationId** | **String** |  | 
**DepartureLocationIds** | **String[]** |  | 
**Transportation** | [**RequestTransportationFast**](RequestTransportationFast.md) |  | 
**TravelTime** | **Int32** |  | 
**ArrivalTimePeriod** | [**RequestArrivalTimePeriod**](RequestArrivalTimePeriod.md) |  | 
**Properties** | [**RequestTimeFilterFastProperty[]**](RequestTimeFilterFastProperty.md) |  | 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterFastArrivalManyToOneSearch = Initialize-PSOpenAPIToolsRequestTimeFilterFastArrivalManyToOneSearch  -Id null `
 -ArrivalLocationId null `
 -DepartureLocationIds null `
 -Transportation null `
 -TravelTime null `
 -ArrivalTimePeriod null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterFastArrivalManyToOneSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

