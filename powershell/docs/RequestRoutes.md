# RequestRoutes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locations** | [**RequestLocation[]**](RequestLocation.md) |  | 
**DepartureSearches** | [**RequestRoutesDepartureSearch[]**](RequestRoutesDepartureSearch.md) |  | [optional] 
**ArrivalSearches** | [**RequestRoutesArrivalSearch[]**](RequestRoutesArrivalSearch.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestRoutes = Initialize-PSOpenAPIToolsRequestRoutes  -Locations null `
 -DepartureSearches null `
 -ArrivalSearches null
```

- Convert the resource to JSON
```powershell
$RequestRoutes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

