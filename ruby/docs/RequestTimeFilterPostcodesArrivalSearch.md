# OpenapiClient::RequestTimeFilterPostcodesArrivalSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**travel_time** | **Integer** |  | 
**arrival_time** | **DateTime** |  | 
**properties** | [**Array&lt;RequestTimeFilterPostcodesProperty&gt;**](RequestTimeFilterPostcodesProperty.md) |  | 
**range** | [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RequestTimeFilterPostcodesArrivalSearch.new(id: null,
                                 transportation: null,
                                 travel_time: null,
                                 arrival_time: null,
                                 properties: null,
                                 range: null)
```


