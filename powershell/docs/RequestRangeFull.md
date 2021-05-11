# RequestRangeFull
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | 
**MaxResults** | **Int32** |  | 
**Width** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$RequestRangeFull = Initialize-PSOpenAPIToolsRequestRangeFull  -Enabled null `
 -MaxResults null `
 -Width null
```

- Convert the resource to JSON
```powershell
$RequestRangeFull | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

