# RequestTimeFilterPostcodes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DepartureSearches** | [**RequestTimeFilterPostcodesDepartureSearch[]**](RequestTimeFilterPostcodesDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | [**RequestTimeFilterPostcodesArrivalSearch[]**](RequestTimeFilterPostcodesArrivalSearch.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterPostcodes = Initialize-PSOpenAPIToolsRequestTimeFilterPostcodes  -DepartureSearches null `
 -ArrivalSearches null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterPostcodes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

