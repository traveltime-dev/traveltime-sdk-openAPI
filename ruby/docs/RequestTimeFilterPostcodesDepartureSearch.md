# OpenapiClient::RequestTimeFilterPostcodesDepartureSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **transportation** | [**RequestTransportation**](RequestTransportation.md) |  |  |
| **travel_time** | **Integer** |  |  |
| **departure_time** | **Time** |  |  |
| **properties** | [**Array&lt;RequestTimeFilterPostcodesProperty&gt;**](RequestTimeFilterPostcodesProperty.md) |  |  |
| **range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestTimeFilterPostcodesDepartureSearch.new(
  id: null,
  transportation: null,
  travel_time: null,
  departure_time: null,
  properties: null,
  range: null
)
```

