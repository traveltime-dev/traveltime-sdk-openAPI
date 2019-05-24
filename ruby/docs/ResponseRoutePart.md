# OpenapiClient::ResponseRoutePart

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**type** | **String** |  | 
**mode** | [**ResponseTransportationMode**](ResponseTransportationMode.md) |  | 
**directions** | **String** |  | 
**distance** | **Integer** |  | 
**travel_time** | **Integer** |  | 
**coords** | [**Array&lt;Coords&gt;**](Coords.md) |  | 
**direction** | **String** |  | [optional] 
**road** | **String** |  | [optional] 
**turn** | **String** |  | [optional] 
**line** | **String** |  | [optional] 
**departure_station** | **String** |  | [optional] 
**arrival_station** | **String** |  | [optional] 
**departs_at** | **String** |  | [optional] 
**arrives_at** | **String** |  | [optional] 
**num_stops** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ResponseRoutePart.new(id: null,
                                 type: null,
                                 mode: null,
                                 directions: null,
                                 distance: null,
                                 travel_time: null,
                                 coords: null,
                                 direction: null,
                                 road: null,
                                 turn: null,
                                 line: null,
                                 departure_station: null,
                                 arrival_station: null,
                                 departs_at: null,
                                 arrives_at: null,
                                 num_stops: null)
```


