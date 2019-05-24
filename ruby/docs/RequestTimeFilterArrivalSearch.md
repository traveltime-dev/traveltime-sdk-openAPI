# OpenapiClient::RequestTimeFilterArrivalSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**departure_location_ids** | **Array&lt;String&gt;** |  | 
**arrival_location_id** | **String** |  | 
**transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**travel_time** | **Integer** |  | 
**arrival_time** | **DateTime** |  | 
**properties** | [**Array&lt;RequestTimeFilterProperty&gt;**](RequestTimeFilterProperty.md) |  | 
**range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RequestTimeFilterArrivalSearch.new(id: null,
                                 departure_location_ids: null,
                                 arrival_location_id: null,
                                 transportation: null,
                                 travel_time: null,
                                 arrival_time: null,
                                 properties: null,
                                 range: null)
```


