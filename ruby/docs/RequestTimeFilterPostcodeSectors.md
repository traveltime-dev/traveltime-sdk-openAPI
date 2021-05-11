# OpenapiClient::RequestTimeFilterPostcodeSectors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **departure_searches** | [**Array&lt;RequestTimeFilterPostcodeSectorsDepartureSearch&gt;**](RequestTimeFilterPostcodeSectorsDepartureSearch.md) |  | [optional] |
| **arrival_searches** | [**Array&lt;RequestTimeFilterPostcodeSectorsArrivalSearch&gt;**](RequestTimeFilterPostcodeSectorsArrivalSearch.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestTimeFilterPostcodeSectors.new(
  departure_searches: null,
  arrival_searches: null
)
```

