# ResponseMapInfoFeatures
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PublicTransport** | [**ResponseMapInfoFeaturesPublicTransport**](ResponseMapInfoFeaturesPublicTransport.md) |  | [optional] 
**Fares** | **Boolean** |  | 
**Postcodes** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$ResponseMapInfoFeatures = Initialize-PSOpenAPIToolsResponseMapInfoFeatures  -PublicTransport null `
 -Fares null `
 -Postcodes null
```

- Convert the resource to JSON
```powershell
$ResponseMapInfoFeatures | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

