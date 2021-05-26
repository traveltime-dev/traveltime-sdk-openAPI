# OpenapiClient::RequestTimeMapDepartureSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **coords** | [**Coords**](Coords.md) |  |  |
| **transportation** | [**RequestTransportation**](RequestTransportation.md) |  |  |
| **travel_time** | **Integer** |  |  |
| **departure_time** | **Time** |  |  |
| **properties** | [**Array&lt;RequestTimeMapProperty&gt;**](RequestTimeMapProperty.md) |  | [optional] |
| **range** | [**RequestRangeNoMaxResults**](RequestRangeNoMaxResults.md) |  | [optional] |
| **level_of_detail** | [**RequestLevelOfDetail**](RequestLevelOfDetail.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestTimeMapDepartureSearch.new(
  id: null,
  coords: null,
  transportation: null,
  travel_time: null,
  departure_time: null,
  properties: null,
  range: null,
  level_of_detail: null
)
```

