# OpenapiClient::RequestTimeFilterPostcodeSectorsDepartureSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **transportation** | [**RequestTransportation**](RequestTransportation.md) |  |  |
| **travel_time** | **Integer** |  |  |
| **departure_time** | **Time** |  |  |
| **reachable_postcodes_threshold** | **Float** |  |  |
| **properties** | [**Array&lt;RequestTimeFilterPostcodeSectorsProperty&gt;**](RequestTimeFilterPostcodeSectorsProperty.md) |  |  |
| **range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestTimeFilterPostcodeSectorsDepartureSearch.new(
  id: null,
  transportation: null,
  travel_time: null,
  departure_time: null,
  reachable_postcodes_threshold: null,
  properties: null,
  range: null
)
```

