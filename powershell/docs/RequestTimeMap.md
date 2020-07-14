# RequestTimeMap
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DepartureSearches** | [**RequestTimeMapDepartureSearch[]**](RequestTimeMapDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | [**RequestTimeMapArrivalSearch[]**](RequestTimeMapArrivalSearch.md) |  | [optional] 
**Unions** | [**RequestUnionOnIntersection[]**](RequestUnionOnIntersection.md) |  | [optional] 
**Intersections** | [**RequestUnionOnIntersection[]**](RequestUnionOnIntersection.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-PSOpenAPIToolsRequestTimeMap  -DepartureSearches null `
 -ArrivalSearches null `
 -Unions null `
 -Intersections null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

