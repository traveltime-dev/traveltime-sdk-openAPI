# RequestTimeFilterPostcodeDistrictsArrivalSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **Int32** |  | 
**ArrivalTime** | **System.DateTime** |  | 
**ReachablePostcodesThreshold** | **Double** |  | 
**Properties** | [**RequestTimeFilterPostcodeDistrictsProperty[]**](RequestTimeFilterPostcodeDistrictsProperty.md) |  | 
**Range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-PSOpenAPIToolsRequestTimeFilterPostcodeDistrictsArrivalSearch  -Id null `
 -Transportation null `
 -TravelTime null `
 -ArrivalTime null `
 -ReachablePostcodesThreshold null `
 -Properties null `
 -Range null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

