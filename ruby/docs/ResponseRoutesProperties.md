# OpenapiClient::ResponseRoutesProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **travel_time** | **Integer** |  | [optional] |
| **distance** | **Integer** |  | [optional] |
| **fares** | [**ResponseFares**](ResponseFares.md) |  | [optional] |
| **route** | [**ResponseRoute**](ResponseRoute.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResponseRoutesProperties.new(
  travel_time: null,
  distance: null,
  fares: null,
  route: null
)
```

