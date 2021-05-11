# RequestTimeFilterFastArrivalSearches
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ManyToOne** | [**RequestTimeFilterFastArrivalManyToOneSearch[]**](RequestTimeFilterFastArrivalManyToOneSearch.md) |  | [optional] 
**OneToMany** | [**RequestTimeFilterFastArrivalOneToManySearch[]**](RequestTimeFilterFastArrivalOneToManySearch.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTimeFilterFastArrivalSearches = Initialize-PSOpenAPIToolsRequestTimeFilterFastArrivalSearches  -ManyToOne null `
 -OneToMany null
```

- Convert the resource to JSON
```powershell
$RequestTimeFilterFastArrivalSearches | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

