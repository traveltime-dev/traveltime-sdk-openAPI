# OpenapiClient::RequestTimeFilterFastArrivalOneToManySearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**departure_location_id** | **String** |  | 
**arrival_location_ids** | **Array&lt;String&gt;** |  | 
**transportation** | [**RequestTransportationFast**](RequestTransportationFast.md) |  | 
**travel_time** | **Integer** |  | 
**arrival_time_period** | [**RequestArrivalTimePeriod**](RequestArrivalTimePeriod.md) |  | 
**properties** | [**Array&lt;RequestTimeFilterFastProperty&gt;**](RequestTimeFilterFastProperty.md) |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RequestTimeFilterFastArrivalOneToManySearch.new(id: null,
                                 departure_location_id: null,
                                 arrival_location_ids: null,
                                 transportation: null,
                                 travel_time: null,
                                 arrival_time_period: null,
                                 properties: null)
```


