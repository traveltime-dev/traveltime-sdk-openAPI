# OpenapiClient::RequestTimeMapArrivalSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**coords** | [**Coords**](Coords.md) |  | 
**transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**travel_time** | **Integer** |  | 
**arrival_time** | **DateTime** |  | 
**properties** | [**Array&lt;RequestTimeMapProperty&gt;**](RequestTimeMapProperty.md) |  | [optional] 
**range** | [**RequestRangeNoMaxResults**](RequestRangeNoMaxResults.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RequestTimeMapArrivalSearch.new(id: null,
                                 coords: null,
                                 transportation: null,
                                 travel_time: null,
                                 arrival_time: null,
                                 properties: null,
                                 range: null)
```


