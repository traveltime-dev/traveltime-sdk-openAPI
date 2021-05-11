# RequestTimeFilterPostcodeDistricts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DepartureSearches** | [**RequestTimeFilterPostcodeDistrictsDepartureSearch[]**](RequestTimeFilterPostcodeDistrictsDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | [**RequestTimeFilterPostcodeDistrictsArrivalSearch[]**](RequestTimeFilterPostcodeDistrictsArrivalSearch.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterPostcodeDistricts = Initialize-PSOpenAPIToolsRequestTimeFilterPostcodeDistricts  -DepartureSearches null `
 -ArrivalSearches null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterPostcodeDistricts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

