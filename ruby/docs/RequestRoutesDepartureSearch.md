# OpenapiClient::RequestRoutesDepartureSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**departure_location_id** | **String** |  | 
**arrival_location_ids** | **Array&lt;String&gt;** |  | 
**transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**departure_time** | **DateTime** |  | 
**properties** | [**Array&lt;RequestRoutesProperty&gt;**](RequestRoutesProperty.md) |  | 
**range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RequestRoutesDepartureSearch.new(id: null,
                                 departure_location_id: null,
                                 arrival_location_ids: null,
                                 transportation: null,
                                 departure_time: null,
                                 properties: null,
                                 range: null)
```


