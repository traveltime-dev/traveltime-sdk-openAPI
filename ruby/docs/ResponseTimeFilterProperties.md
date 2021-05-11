# OpenapiClient::ResponseTimeFilterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **travel_time** | **Integer** |  | [optional] |
| **distance** | **Integer** |  | [optional] |
| **distance_breakdown** | [**Array&lt;ResponseDistanceBreakdownItem&gt;**](ResponseDistanceBreakdownItem.md) |  | [optional] |
| **fares** | [**ResponseFares**](ResponseFares.md) |  | [optional] |
| **route** | [**ResponseRoute**](ResponseRoute.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResponseTimeFilterProperties.new(
  travel_time: null,
  distance: null,
  distance_breakdown: null,
  fares: null,
  route: null
)
```

