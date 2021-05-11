# OpenapiClient::RequestTimeFilterPostcodeDistrictsArrivalSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **transportation** | [**RequestTransportation**](RequestTransportation.md) |  |  |
| **travel_time** | **Integer** |  |  |
| **arrival_time** | **Time** |  |  |
| **reachable_postcodes_threshold** | **Float** |  |  |
| **properties** | [**Array&lt;RequestTimeFilterPostcodeDistrictsProperty&gt;**](RequestTimeFilterPostcodeDistrictsProperty.md) |  |  |
| **range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestTimeFilterPostcodeDistrictsArrivalSearch.new(
  id: null,
  transportation: null,
  travel_time: null,
  arrival_time: null,
  reachable_postcodes_threshold: null,
  properties: null,
  range: null
)
```

