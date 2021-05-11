# OpenapiClient::RequestRoutesDepartureSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **departure_location_id** | **String** |  |  |
| **arrival_location_ids** | **Array&lt;String&gt;** |  |  |
| **transportation** | [**RequestTransportation**](RequestTransportation.md) |  |  |
| **departure_time** | **Time** |  |  |
| **properties** | [**Array&lt;RequestRoutesProperty&gt;**](RequestRoutesProperty.md) |  |  |
| **range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestRoutesDepartureSearch.new(
  id: null,
  departure_location_id: null,
  arrival_location_ids: null,
  transportation: null,
  departure_time: null,
  properties: null,
  range: null
)
```

