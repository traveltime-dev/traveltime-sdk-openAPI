# OpenapiClient::ResponseFaresBreakdownItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **modes** | [**Array&lt;ResponseTransportationMode&gt;**](ResponseTransportationMode.md) |  |  |
| **route_part_ids** | **Array&lt;Integer&gt;** |  |  |
| **tickets** | [**Array&lt;ResponseFareTicket&gt;**](ResponseFareTicket.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResponseFaresBreakdownItem.new(
  modes: null,
  route_part_ids: null,
  tickets: null
)
```

