# RequestTimeFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locations** | [**RequestLocation[]**](RequestLocation.md) |  | 
**DepartureSearches** | [**RequestTimeFilterDepartureSearch[]**](RequestTimeFilterDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | [**RequestTimeFilterArrivalSearch[]**](RequestTimeFilterArrivalSearch.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilter = Initialize-PSOpenAPIToolsRequestTimeFilter  -Locations null `
 -DepartureSearches null `
 -ArrivalSearches null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

