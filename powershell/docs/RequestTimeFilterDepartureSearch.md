# RequestTimeFilterDepartureSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**DepartureLocationId** | **String** |  | 
**ArrivalLocationIds** | **String[]** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **Int32** |  | 
**DepartureTime** | **System.DateTime** |  | 
**Properties** | [**RequestTimeFilterProperty[]**](RequestTimeFilterProperty.md) |  | 
**Range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-PSOpenAPIToolsRequestTimeFilterDepartureSearch  -Id null `
 -DepartureLocationId null `
 -ArrivalLocationIds null `
 -Transportation null `
 -TravelTime null `
 -DepartureTime null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

