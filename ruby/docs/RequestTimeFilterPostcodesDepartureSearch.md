# OpenapiClient::RequestTimeFilterPostcodesDepartureSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**travel_time** | **Integer** |  | 
**departure_time** | **DateTime** |  | 
**properties** | [**Array&lt;RequestTimeFilterPostcodesProperty&gt;**](RequestTimeFilterPostcodesProperty.md) |  | 
**range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RequestTimeFilterPostcodesDepartureSearch.new(id: null,
                                 transportation: null,
                                 travel_time: null,
                                 departure_time: null,
                                 properties: null,
                                 range: null)
```


