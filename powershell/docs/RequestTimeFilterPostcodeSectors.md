# RequestTimeFilterPostcodeSectors
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DepartureSearches** | [**RequestTimeFilterPostcodeSectorsDepartureSearch[]**](RequestTimeFilterPostcodeSectorsDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | [**RequestTimeFilterPostcodeSectorsArrivalSearch[]**](RequestTimeFilterPostcodeSectorsArrivalSearch.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterPostcodeSectors = Initialize-PSOpenAPIToolsRequestTimeFilterPostcodeSectors  -DepartureSearches null `
 -ArrivalSearches null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterPostcodeSectors | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

