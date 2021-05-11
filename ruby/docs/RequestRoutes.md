# OpenapiClient::RequestRoutes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locations** | [**Array&lt;RequestLocation&gt;**](RequestLocation.md) |  |  |
| **departure_searches** | [**Array&lt;RequestRoutesDepartureSearch&gt;**](RequestRoutesDepartureSearch.md) |  | [optional] |
| **arrival_searches** | [**Array&lt;RequestRoutesArrivalSearch&gt;**](RequestRoutesArrivalSearch.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RequestRoutes.new(
  locations: null,
  departure_searches: null,
  arrival_searches: null
)
```

