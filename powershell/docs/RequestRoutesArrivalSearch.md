# RequestRoutesArrivalSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**DepartureLocationIds** | **String[]** |  | 
**ArrivalLocationId** | **String** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**ArrivalTime** | **System.DateTime** |  | 
**Properties** | [**RequestRoutesProperty[]**](RequestRoutesProperty.md) |  | 
**Range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-PSOpenAPIToolsRequestRoutesArrivalSearch  -Id null `
 -DepartureLocationIds null `
 -ArrivalLocationId null `
 -Transportation null `
 -ArrivalTime null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

