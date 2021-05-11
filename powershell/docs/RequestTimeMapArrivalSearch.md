# RequestTimeMapArrivalSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Coords** | [**Coords**](Coords.md) |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **Int32** |  | 
**ArrivalTime** | **System.DateTime** |  | 
**Properties** | [**RequestTimeMapProperty[]**](RequestTimeMapProperty.md) |  | [optional] 
**Range** | [**RequestRangeNoMaxResults**](RequestRangeNoMaxResults.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeMapArrivalSearch = Initialize-PSOpenAPIToolsRequestTimeMapArrivalSearch  -Id null `
 -Coords null `
 -Transportation null `
 -TravelTime null `
 -ArrivalTime null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$RequestTimeMapArrivalSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

