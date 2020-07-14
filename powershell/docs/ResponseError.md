# ResponseError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HttpStatus** | **Int32** |  | [optional] 
**ErrorCode** | **Int32** |  | [optional] 
**Description** | **String** |  | [optional] 
**DocumentationLink** | **String** |  | [optional] 
**AdditionalInfo** | [**System.Collections.Hashtable**](Array.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
Initialize-PSOpenAPIToolsResponseError  -HttpStatus null `
 -ErrorCode null `
 -Description null `
 -DocumentationLink null `
 -AdditionalInfo null
```

- Convert the resource to JSON
```powershell
$ | Convert-ToJSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

