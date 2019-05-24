# OpenapiClient::RequestTimeFilterPostcodeSectorsDepartureSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**travel_time** | **Integer** |  | 
**departure_time** | **DateTime** |  | 
**reachable_postcodes_threshold** | **Float** |  | 
**properties** | [**Array&lt;RequestTimeFilterPostcodeSectorsProperty&gt;**](RequestTimeFilterPostcodeSectorsProperty.md) |  | 
**range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RequestTimeFilterPostcodeSectorsDepartureSearch.new(id: null,
                                 transportation: null,
                                 travel_time: null,
                                 departure_time: null,
                                 reachable_postcodes_threshold: null,
                                 properties: null,
                                 range: null)
```


