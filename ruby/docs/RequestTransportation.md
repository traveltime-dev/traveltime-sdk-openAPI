# OpenapiClient::RequestTransportation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **pt_change_delay** | **Integer** |  | [optional] |
| **walking_time** | **Integer** |  | [optional] |
| **driving_time_to_station** | **Integer** |  | [optional] |
| **parking_time** | **Integer** |  | [optional] |
| **boarding_time** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestTransportation.new(
  type: null,
  pt_change_delay: null,
  walking_time: null,
  driving_time_to_station: null,
  parking_time: null,
  boarding_time: null
)
```

