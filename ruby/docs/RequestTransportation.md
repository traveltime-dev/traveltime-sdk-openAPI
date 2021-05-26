# OpenapiClient::RequestTransportation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **disable_border_crossing** | **Boolean** |  | [optional] |
| **pt_change_delay** | **Integer** |  | [optional] |
| **walking_time** | **Integer** |  | [optional] |
| **driving_time_to_station** | **Integer** |  | [optional] |
| **cycling_time_to_station** | **Integer** |  | [optional] |
| **parking_time** | **Integer** |  | [optional] |
| **boarding_time** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestTransportation.new(
  type: null,
  disable_border_crossing: null,
  pt_change_delay: null,
  walking_time: null,
  driving_time_to_station: null,
  cycling_time_to_station: null,
  parking_time: null,
  boarding_time: null
)
```

