# OpenapiClient::RequestRoutesArrivalSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **departure_location_ids** | **Array&lt;String&gt;** |  |  |
| **arrival_location_id** | **String** |  |  |
| **transportation** | [**RequestTransportation**](RequestTransportation.md) |  |  |
| **arrival_time** | **Time** |  |  |
| **properties** | [**Array&lt;RequestRoutesProperty&gt;**](RequestRoutesProperty.md) |  |  |
| **range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestRoutesArrivalSearch.new(
  id: null,
  departure_location_ids: null,
  arrival_location_id: null,
  transportation: null,
  arrival_time: null,
  properties: null,
  range: null
)
```

