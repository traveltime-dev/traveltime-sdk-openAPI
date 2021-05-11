# ResponseFares
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Breakdown** | [**ResponseFaresBreakdownItem[]**](ResponseFaresBreakdownItem.md) |  | 
**TicketsTotal** | [**ResponseFareTicket[]**](ResponseFareTicket.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseFares = Initialize-PSOpenAPIToolsResponseFares  -Breakdown null `
 -TicketsTotal null
```

- Convert the resource to JSON
```powershell
$ResponseFares | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

