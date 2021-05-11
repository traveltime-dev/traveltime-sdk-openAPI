# OpenapiClient::ResponseTimeFilterPostcodeDistrictProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **travel_time_reachable** | [**ResponseTravelTimeStatistics**](ResponseTravelTimeStatistics.md) |  | [optional] |
| **travel_time_all** | [**ResponseTravelTimeStatistics**](ResponseTravelTimeStatistics.md) |  | [optional] |
| **coverage** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResponseTimeFilterPostcodeDistrictProperties.new(
  travel_time_reachable: null,
  travel_time_all: null,
  coverage: null
)
```

