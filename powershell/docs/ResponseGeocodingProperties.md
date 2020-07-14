# ResponseGeocodingProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Label** | **String** |  | 
**Score** | **Double** |  | [optional] 
**HouseNumber** | **String** |  | [optional] 
**Street** | **String** |  | [optional] 
**Region** | **String** |  | [optional] 
**RegionCode** | **String** |  | [optional] 
**Neighbourhood** | **String** |  | [optional] 
**County** | **String** |  | [optional] 
**Macroregion** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**CountryCode** | **String** |  | [optional] 
**Continent** | **String** |  | [optional] 
**Postcode** | **String** |  | [optional] 
**Features** | [**ResponseMapInfoFeatures**](ResponseMapInfoFeatures.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-PSOpenAPIToolsResponseGeocodingProperties  -Name null `
 -Label null `
 -Score null `
 -HouseNumber null `
 -Street null `
 -Region null `
 -RegionCode null `
 -Neighbourhood null `
 -County null `
 -Macroregion null `
 -City null `
 -Country null `
 -CountryCode null `
 -Continent null `
 -Postcode null `
 -Features null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

