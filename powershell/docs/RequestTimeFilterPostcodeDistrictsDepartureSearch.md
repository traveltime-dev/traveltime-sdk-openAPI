# RequestTimeFilterPostcodeDistrictsDepartureSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **Int32** |  | 
**DepartureTime** | **System.DateTime** |  | 
**ReachablePostcodesThreshold** | **Double** |  | 
**Properties** | [**RequestTimeFilterPostcodeDistrictsProperty[]**](RequestTimeFilterPostcodeDistrictsProperty.md) |  | 
**Range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterPostcodeDistrictsDepartureSearch = Initialize-PSOpenAPIToolsRequestTimeFilterPostcodeDistrictsDepartureSearch  -Id null `
 -Transportation null `
 -TravelTime null `
 -DepartureTime null `
 -ReachablePostcodesThreshold null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterPostcodeDistrictsDepartureSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

