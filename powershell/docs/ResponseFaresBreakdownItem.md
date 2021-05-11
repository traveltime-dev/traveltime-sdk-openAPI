# ResponseFaresBreakdownItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Modes** | [**ResponseTransportationMode[]**](ResponseTransportationMode.md) |  | 
**RoutePartIds** | **Int32[]** |  | 
**Tickets** | [**ResponseFareTicket[]**](ResponseFareTicket.md) |  | 

## Examples

- Prepare the resource
```powershell
$ResponseFaresBreakdownItem = Initialize-PSOpenAPIToolsResponseFaresBreakdownItem  -Modes null `
 -RoutePartIds null `
 -Tickets null
```

- Convert the resource to JSON
```powershell
$ResponseFaresBreakdownItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

