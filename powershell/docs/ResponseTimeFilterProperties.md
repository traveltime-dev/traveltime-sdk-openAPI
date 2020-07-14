# ResponseTimeFilterProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TravelTime** | **Int32** |  | [optional] 
**Distance** | **Int32** |  | [optional] 
**DistanceBreakdown** | [**ResponseDistanceBreakdownItem[]**](ResponseDistanceBreakdownItem.md) |  | [optional] 
**Fares** | [**ResponseFares**](ResponseFares.md) |  | [optional] 
**Route** | [**ResponseRoute**](ResponseRoute.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-PSOpenAPIToolsResponseTimeFilterProperties  -TravelTime null `
 -Distance null `
 -DistanceBreakdown null `
 -Fares null `
 -Route null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

