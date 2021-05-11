# ResponseTimeFilterFastProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TravelTime** | **Int32** |  | [optional] 
**Fares** | [**ResponseFaresFast**](ResponseFaresFast.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResponseTimeFilterFastProperties = Initialize-PSOpenAPIToolsResponseTimeFilterFastProperties  -TravelTime null `
 -Fares null
```

- Convert the resource to JSON
```powershell
$ResponseTimeFilterFastProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

