# OpenapiClient::RequestTimeFilterPostcodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **departure_searches** | [**Array&lt;RequestTimeFilterPostcodesDepartureSearch&gt;**](RequestTimeFilterPostcodesDepartureSearch.md) |  | [optional] |
| **arrival_searches** | [**Array&lt;RequestTimeFilterPostcodesArrivalSearch&gt;**](RequestTimeFilterPostcodesArrivalSearch.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestTimeFilterPostcodes.new(
  departure_searches: null,
  arrival_searches: null
)
```

