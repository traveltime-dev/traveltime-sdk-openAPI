# RequestTimeMapDepartureSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Coords** | [**Coords**](Coords.md) |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **Int32** |  | 
**DepartureTime** | **System.DateTime** |  | 
**Properties** | [**RequestTimeMapProperty[]**](RequestTimeMapProperty.md) |  | [optional] 
**Range** | [**RequestRangeNoMaxResults**](RequestRangeNoMaxResults.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-PSOpenAPIToolsRequestTimeMapDepartureSearch  -Id null `
 -Coords null `
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

