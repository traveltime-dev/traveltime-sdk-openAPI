# ResponseTimeFilterPostcodeSectorProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TravelTimeReachable** | [**ResponseTravelTimeStatistics**](ResponseTravelTimeStatistics.md) |  | [optional] 
**TravelTimeAll** | [**ResponseTravelTimeStatistics**](ResponseTravelTimeStatistics.md) |  | [optional] 
**Coverage** | **Double** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResponseTimeFilterPostcodeSectorProperties = Initialize-PSOpenAPIToolsResponseTimeFilterPostcodeSectorProperties  -TravelTimeReachable null `
 -TravelTimeAll null `
 -Coverage null
```

- Convert the resource to JSON
```powershell
$ResponseTimeFilterPostcodeSectorProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

