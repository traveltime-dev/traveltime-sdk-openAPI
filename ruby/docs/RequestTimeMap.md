# OpenapiClient::RequestTimeMap

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**departure_searches** | [**Array&lt;RequestTimeMapDepartureSearch&gt;**](RequestTimeMapDepartureSearch.md) |  | [optional] 
**arrival_searches** | [**Array&lt;RequestTimeMapArrivalSearch&gt;**](RequestTimeMapArrivalSearch.md) |  | [optional] 
**unions** | [**Array&lt;RequestUnionOnIntersection&gt;**](RequestUnionOnIntersection.md) |  | [optional] 
**intersections** | [**Array&lt;RequestUnionOnIntersection&gt;**](RequestUnionOnIntersection.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RequestTimeMap.new(departure_searches: null,
                                 arrival_searches: null,
                                 unions: null,
                                 intersections: null)
```


