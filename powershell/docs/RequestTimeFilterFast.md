# RequestTimeFilterFast
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locations** | [**RequestLocation[]**](RequestLocation.md) |  | 
**ArrivalSearches** | [**RequestTimeFilterFastArrivalSearches**](RequestTimeFilterFastArrivalSearches.md) |  | 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterFast = Initialize-PSOpenAPIToolsRequestTimeFilterFast  -Locations null `
 -ArrivalSearches null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterFast | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

