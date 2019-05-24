# OpenapiClient::RequestTimeFilterDepartureSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**departure_location_id** | **String** |  | 
**arrival_location_ids** | **Array&lt;String&gt;** |  | 
**transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**travel_time** | **Integer** |  | 
**departure_time** | **DateTime** |  | 
**properties** | [**Array&lt;RequestTimeFilterProperty&gt;**](RequestTimeFilterProperty.md) |  | 
**range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RequestTimeFilterDepartureSearch.new(id: null,
                                 departure_location_id: null,
                                 arrival_location_ids: null,
                                 transportation: null,
                                 travel_time: null,
                                 departure_time: null,
                                 properties: null,
                                 range: null)
```


